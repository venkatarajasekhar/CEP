#include <stm32f4xx.h>
#include <stm32f4xx_rcc.h>
#include "CE_Lib.h"
#include "tft.h"
#include "functiongen.h"
#include "global.h"
#include "labor6.h"
#include "peripherals.h"
#include "mp3dec.h"
#include <stm32f4xx_gpio.h>
#include "spi.h"
#include "spi_mem.h"



#define N_ARR 3808 		//168Mhz/44100HZ
#define SCREEN_UPDATE_CYCLE 168000
HMP3Decoder mp3dec;
int run = 1;

typedef struct{
	int isEmpty;
	int16_t data [MAX_NGRAN*MAX_NCHAN*MAX_NSAMP];
} buffer_t;

//Main Buffer (SPI-Daten kommen hier rein und werden dann vom MP3-Dekoder decodiert und in den eigentlichen Buffer reingeschrieben
typedef struct{
	int isEmpty;
	uint8_t data [MAINBUF_SIZE];
} spi_main_Buffer;

void setup_TIM8_DAC_PWM(void);
void start_TIM8_DAC(void);
void fuelle_puffer(volatile buffer_t *buf);
void pwm_Init(void);
void print_display(void);
	

volatile int idx_ISR = 0;
volatile int msec;
char msec_Buf[10];
char interupt_Buf[10];
char freq_Buf[20];


int interrupt_Counter = 0;
int mseczaehlvar = 0;
int fi = 0;

static spi_main_Buffer mainBuf;

volatile static buffer_t buf1;
volatile static buffer_t buf2;


volatile static buffer_t* mp3OutBuffer;
volatile static buffer_t* irsInBuffer;


//unsigned int frequency;
unsigned int play_modus;
int *tabelle = sinus_table;
unsigned int amplitude;
int srefresh = SREFRESH_OFF;

//labor6
int syncword_address =0;
int address = 0;

void labor6(void) {
		
	RCC_ClocksTypeDef RCC_Clocks;
	
	msec = 0;
	
	//start with 5000Hz and Amplitude 1.0V (b_big)
	//frequency= DELTA_IDX_440;
	amplitude = b_big;
	
	initCEP_Board();
	setup_TIM8_DAC_PWM();

	//SysTick end of count event each 10ms 
	RCC_GetClocksFreq(&RCC_Clocks);
	SysTick_Config(RCC_Clocks.HCLK_Frequency / 1000);

	TFT_cursor_off();
	
	buf1.isEmpty = 1;
	buf2.isEmpty = 1;
	
	mp3OutBuffer = &buf1;																//start with buf1
	irsInBuffer = &buf1;
	   
  //Init von PWM + MP3Dekoder
  pwm_Init();     // inti & setup
  mp3dec = MP3InitDecoder();
    
  //SPI INIT
  spi_setup();
    
  //Fuelle Eingabepuffer mit MP3-Daten vom SPI-Flash (die ersten 1940?)
  spiFlashMemRead(SPI_MEM_ORIGINAL, address, mainBuf.data, MAINBUF_SIZE);

	
	TFT_cls();
	
	TFT_gotoxy(1,1);
	TFT_puts("no skip");
	//TFT_puts("Frequenz:   440");
	

	while(run){
		
				read_buttons();
				print_display();
				syncword_address = MP3FindSyncWord(mainBuf.data, MAINBUF_SIZE); //sync word finden 
		
		if (syncword_address== -1){	//sync word nicht gefunden ? ende
				run =0;
		}else{			//mainbuffer ab neuer syncword_address erneut fuellen
				
					address += syncword_address;
					spiFlashMemRead(SPI_MEM_ORIGINAL, address, mainBuf.data, MAINBUF_SIZE);
			
					while(mp3OutBuffer->isEmpty==1){	
							setLED(WAITING_LED);	//warte
					}//ansonsten fuelle mp3OutBuffer
			
					resetLED(WAITING_LED);	
					
					ITM->PORT[9].u32 = 0;		//zeit messen	
					fuelle_puffer(mp3OutBuffer);	
					ITM->PORT[9].u32 = 1;			
		
					// switch Buffer
					if(mp3OutBuffer == &buf1) {
							mp3OutBuffer = &buf2;											
					}else {
							mp3OutBuffer = &buf1;											
					} 
				}
			
		}
	
	MP3FreeDecoder(mp3dec);
}

void TIM8_UP_TIM13_IRQHandler(void) {
	
	TIM8->SR = ~(1 << 0);													//Interrupt zurücknehmen 
	interrupt_Counter++;
	
	if(irsInBuffer->isEmpty) {
        setLED(UNDERFLOW_LED);
    } else {
        resetLED(UNDERFLOW_LED);
        
        //TODO
        // aus isrInPuffer lesen
        
        //TODO
        // pwm werte berechnen und ausgeben
        
        if(idx_ISR >= BUFFER_SIZE) {
            idx_ISR = 0;
            irsInBuffer->isEmpty = 1;
            
            if(irsInBuffer == &buf1) { 
                irsInBuffer = &buf2;
            } else {
                irsInBuffer = &buf1;
            }
        }   
    }
}

void setup_TIM8_DAC_PWM(void) {
    GPIO_InitTypeDef gpio;
    RCC->APB2ENR |= RCC_APB2ENR_TIM8EN; 					// Takt fuer Timer 8 einschalten
 
    // led 4 und 5 auf gpioi
	gpio.GPIO_Mode = GPIO_Mode_AIN;
    gpio.GPIO_OType = GPIO_OType_PP;
    gpio.GPIO_PuPd = GPIO_PuPd_UP;
    gpio.GPIO_Speed = GPIO_Speed_100MHz;
    gpio.GPIO_Pin = GPIO_Pin_4 | GPIO_Pin_5;
    GPIO_Init(GPIOI, &gpio);
    
    // pin 1 und 2 unf gpiob
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);
	gpio.GPIO_Mode  = GPIO_Mode_AF;
	gpio.GPIO_OType = GPIO_OType_PP;
	gpio.GPIO_PuPd  = GPIO_PuPd_NOPULL;
	gpio.GPIO_Pin   = GPIO_Pin_0 | GPIO_Pin_1;	
	gpio.GPIO_Speed	= GPIO_Speed_100MHz;
	GPIO_Init(GPIOB, &gpio);
	
	GPIOB->AFR[0] |= 0x03  << 0;
	GPIOB->AFR[0] |= 0x03  << 1*4;
    
    // timer enable
    TIM8->CR1 = 0;											// Timer disabled
	TIM8->CR2 = 0;										    // Timer disabled
	TIM8->PSC = 0; 										    // Prescaler
	TIM8->ARR = N_ARR; 									    // Auto reload register
	TIM8->DIER = TIM_DIER_UIE; 								// Interrupt einschalten
	TIM8->CR1 = TIM_CR1_CEN | TIM_CR1_ARPE; 			    // Enable Timer(Counter Enable) , enable preload
	
    //Enable PWM
	TIM8->CCMR1 |= TIM_CCMR1_OC2M_2 | TIM_CCMR1_OC2M_1 | TIM_CCMR1_OC2PE; //Channel 2
	TIM8->CCMR2 |= TIM_CCMR2_OC3M_2 | TIM_CCMR2_OC3M_1 | TIM_CCMR2_OC3PE; //Channel 3
	TIM8->CCER |= TIM_CCER_CC3NE | TIM_CCER_CC2NE;
	TIM8->BDTR = TIM_BDTR_MOE;
	TIM8->CR1 = TIM_CR1_CEN | TIM_CR1_ARPE;                               // Enable Timer, enable preload

	NVIC_SetPriorityGrouping(2);
	NVIC_SetPriority(TIM8_UP_TIM13_IRQn, 8);
	NVIC_EnableIRQ(TIM8_UP_TIM13_IRQn);	
		
	TIM8->CCR2 = 0;
	TIM8->CCR3 = 0;	
    
    //DAC_START
	DAC->CR = 0;
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_DAC, ENABLE); //Enabling Clock for DAC1
	DAC->CR |= DAC_CR_EN1 | DAC_CR_EN2;
}    
 
// setup von nils
void pwm_Init(void){
	 
		//PORT B PIN 1&2 INITIALISIEREN
		RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;
		GPIOB->MODER |= (GPIO_Mode_AF << (GPIO_PinSource0 *2)) | (GPIO_Mode_AF << (GPIO_PinSource1 *2));
		GPIOB->OSPEEDR |= (GPIO_Speed_50MHz << (GPIO_PinSource0 * 2)) | (GPIO_Speed_50MHz << (GPIO_PinSource1 * 2));
		GPIOB->OTYPER |= (GPIO_OType_PP << (GPIO_PinSource0)) | (GPIO_OType_PP << (GPIO_PinSource1));
	  GPIOB->PUPDR |= (GPIO_PuPd_UP << (GPIO_PinSource0 * 2)) | (GPIO_PuPd_UP << (GPIO_PinSource1 * 2));
		GPIOB->AFR[0] |= (GPIO_AF_TIM8 << (GPIO_PinSource0 * 4)) | (GPIO_AF_TIM8 << (GPIO_PinSource1 * 4));
  
    //TIMER SETUP	 
    RCC->APB2ENR |= RCC_APB2ENR_TIM8EN; // Takt fuer Timer 8 einschalten
		TIM8->PSC = 0; // Prescaler, Timertakt: 1 MHz
		TIM8->ARR = N_ARR;
		TIM8->BDTR = TIM_BDTR_MOE;
		TIM8->CCMR1 = TIM_CCMR1_OC2M_2 | TIM_CCMR1_OC2M_1 | TIM_CCMR1_OC2PE;
		TIM8->CCMR1 = TIM_CCMR2_OC3M_2 | TIM_CCMR2_OC3M_1 | TIM_CCMR2_OC3PE;
	  TIM8->CCER = TIM_CCER_CC3NE | TIM_CCER_CC2NE;
		TIM8->DIER = TIM_DIER_UIE;
    TIM8->CR1 = TIM_CR1_CEN | TIM_CR1_ARPE; // CONTROL ENABLE & AUTO RELOAD PRELOAD ENABLE
    TIM8->CR2 = 0;
		
		NVIC_SetPriorityGrouping(2);
		NVIC_SetPriority(TIM8_UP_TIM13_IRQn, 0);
		NVIC_EnableIRQ(TIM8_UP_TIM13_IRQn);
	
    
    
 }
 
//void start_TIM8_DAC(void){
//     
//     GPIO_InitTypeDef gpio;
// /*____________________________________T = 44100 Hz___________________________________*/
//	RCC->APB2ENR |= RCC_APB2ENR_TIM8EN; 									// Takt fuer Timer 8 einschalten	 
//	 
//	TIM8->CR1 = 0;															// Timer disabled
//	TIM8->CR2 = 0;															// Timer disabled
//	TIM8->PSC = 0; 															// Prescaler
//	TIM8->ARR = N_ARR; 														// Auto reload register
//	TIM8->DIER = TIM_DIER_UIE; 												// Interrupt einschalten
//	TIM8->CR1 = TIM_CR1_CEN | TIM_CR1_ARPE; 								// Enable Timer(Counter Enable) , enable preload
//	NVIC_EnableIRQ(TIM8_UP_TIM13_IRQn);
//	

//	 //DAC_START
//	DAC->CR = 0;
//	RCC_APB1PeriphClockCmd(RCC_APB1Periph_DAC, ENABLE); //Enabling Clock for DAC1
//	DAC->CR |= (DAC_CR_EN1 << 0);
//    
//     //Dac : Pins PA4 und PA5 müssen als analoge Pins konfiguriert werden ( Pin 6 und 
//	gpio.GPIO_Mode = GPIO_Mode_AIN;
//    gpio.GPIO_OType = GPIO_OType_PP;
//    gpio.GPIO_PuPd = GPIO_PuPd_UP;
//    gpio.GPIO_Speed = GPIO_Speed_50MHz;

//    gpio.GPIO_Pin = GPIO_Pin_4 | GPIO_Pin_5;
//    GPIO_Init(GPIOI, &gpio);
//	
//	
// }
// 
// void pwm_Init(void){
//	 
//		//PORT B PIN 1&2 INITIALISIEREN
//		RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;
//		GPIOB->MODER |= (GPIO_Mode_AF << (GPIO_PinSource0 *2)) | (GPIO_Mode_AF << (GPIO_PinSource1 *2));
//		GPIOB->OSPEEDR |= (GPIO_Speed_50MHz << (GPIO_PinSource0 * 2)) | (GPIO_Speed_50MHz << (GPIO_PinSource1 * 2));
//		GPIOB->OTYPER |= (GPIO_OType_PP << (GPIO_PinSource0)) | (GPIO_OType_PP << (GPIO_PinSource1));
//	  GPIOB->PUPDR |= (GPIO_PuPd_UP << (GPIO_PinSource0 * 2)) | (GPIO_PuPd_UP << (GPIO_PinSource1 * 2));
//		GPIOB->AFR[0] |= (GPIO_AF_TIM8 << (GPIO_PinSource0 * 4)) | (GPIO_AF_TIM8 << (GPIO_PinSource1 * 4));
//  
//    //TIMER SETUP	 
//    RCC->APB2ENR |= RCC_APB2ENR_TIM8EN; // Takt fuer Timer 8 einschalten
//		TIM8->PSC = 0; // Prescaler, Timertakt: 1 MHz
//		TIM8->ARR = N_ARR;
//		TIM8->BDTR = TIM_BDTR_MOE;
//		TIM8->CCMR1 = TIM_CCMR1_OC2M_2 | TIM_CCMR1_OC2M_1 | TIM_CCMR1_OC2PE;
//		TIM8->CCMR1 = TIM_CCMR2_OC3M_2 | TIM_CCMR2_OC3M_1 | TIM_CCMR2_OC3PE;
//	  TIM8->CCER = TIM_CCER_CC3NE | TIM_CCER_CC2NE;
//		TIM8->DIER = TIM_DIER_UIE;
//    TIM8->CR1 = TIM_CR1_CEN | TIM_CR1_ARPE; // CONTROL ENABLE & AUTO RELOAD PRELOAD ENABLE
//    TIM8->CR2 = 0;
//		
//		NVIC_SetPriorityGrouping(2);
//		NVIC_SetPriority(TIM8_UP_TIM13_IRQn, 0);
//		NVIC_EnableIRQ(TIM8_UP_TIM13_IRQn);
//	
//    
//    
// }
 
 
void SysTick_Handler(){
	
	msec++;
}


void fuelle_puffer(volatile buffer_t *buf){
//		int i;
//		unsigned int idx = 0;
//		int buf_input= 0;
//		int val = 0;
//	
//	
//		for(i = 0; i < BUFFER_SIZE; i++){
//			idx = fi >> FIXPOINT_ARITH;			//index zuweisung
//			val = tabelle[idx];							//wert holen
//			buf_input = ( a +  amplitude * val) >> FIXPOINT_ARITH;		//berechnung der DA-Wandler N = a + b*N-stuetz
//			buf->data[i] = buf_input;				//wert in buffer einfuegen		
//		//	fi = (fi + frequency) % SHIFTED_TABLE_SIZE;			//next index berechnen
//	}
//	buf->isEmpty = 0;
	
	int bytesLeft =  MAX_NGRAN*MAX_NCHAN*MAX_NSAMP; //vllt muss die variable nach oben 
	unsigned char** ptr = (unsigned char **)&( mainBuf.data);
	short* ptr2 = (short *)&(buf->data);
	MP3Decode( mp3dec, ptr, &bytesLeft , ptr2, 0);  
	
}

void print_display(){
		// screen nur nach x intervallen updaten
		if(mseczaehlvar <= SCREEN_UPDATE_CYCLE){
			mseczaehlvar++;
		} else {
			mseczaehlvar = 0;
		}
		
		if(srefresh == SREFRESH_ON && (mseczaehlvar == SCREEN_UPDATE_CYCLE)){
			ITM->PORT[8].u32 = 0;
			TFT_gotoxy(1,2);
			TFT_puts("msec: ");
			sprintf(msec_Buf, "%d" , msec);
			TFT_puts(msec_Buf);
			
			TFT_gotoxy(1,3);
			TFT_puts("Anzahl Values: ");
			sprintf(interupt_Buf, "%d" , interrupt_Counter);
			TFT_puts(interupt_Buf);
			ITM->PORT[8].u32 = 1;
			
		}
}
