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

//typedef struct{
//	int isEmpty;
//	int data [BUFFER_SIZE];
//} buffer_t;
typedef struct{
	int isEmpty;
	int16_t data [MAX_NGRAN*MAX_NCHAN*MAX_NSAMP];
} buffer_t;

//Main Buffer (SPI-Daten kommen hier rein und werden dann vom MP3-Dekoder decodiert und in den eigentlichen Buffer reingeschrieben
typedef struct{
	int isEmpty;
	uint8_t data [MAINBUF_SIZE];
} spi_main_Buffer;

void TIM8_UP_TIM13_IRQHandler(void);
void start_TIM8_DAC(void);
void fuelle_puffer(volatile buffer_t *buf);
void pwm_Init(void);
	

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


unsigned int frequency;
int *tabelle = sinus_table;
unsigned int amplitude;
int srefresh = SREFRESH_OFF;


void labor6(void) {
		
	RCC_ClocksTypeDef RCC_Clocks;
	
	msec = 0;
	
	//start with 5000Hz and Amplitude 1.0V (b_big)
	frequency= DELTA_IDX_440;
	amplitude = b_big;
	
	initCEP_Board();
	start_TIM8_DAC();

	//SysTick end of count event each 10ms 
	RCC_GetClocksFreq(&RCC_Clocks);
	SysTick_Config(RCC_Clocks.HCLK_Frequency / 1000);

	TFT_cursor_off();
	
	buf1.isEmpty = 1;
	buf2.isEmpty = 1;
	
	mp3OutBuffer = &buf1;																//start with buf1
	irsInBuffer = &buf1;
	   
    //Init von PWM + MP3Dekoder
    pwm_Init();     // --> noch leer
    MP3InitDecoder();
    
    //SPI INIT
    spi_setup();
    
    //Fuelle Eingabepuffer mit MP3-Daten vom SPI-Flash (die ersten 1940?)
    spiFlashMemRead(SPI_MEM_ORIGINAL, 0, mainBuf.data, MAINBUF_SIZE);
    

	
	
	TFT_cls();
	
		TFT_gotoxy(1,1);
		TFT_puts("Frequenz:   440");
		

	
	while(1){
		
		read_buttons();
		
		// screen nur nach x intervallen updaten
		if(mseczaehlvar <= SCREEN_UPDATE_CYCLE) {
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
		
		
		
		if(mp3OutBuffer->isEmpty){
			resetLED(WAITING_LED);
			
			ITM->PORT[9].u32 = 0;		//zeit messen	
			fuelle_puffer(mp3OutBuffer);	
			ITM->PORT[9].u32 = 1;			
		
			// switch Buffer
			if(mp3OutBuffer == &buf1) {
				mp3OutBuffer = &buf2;											
			} else {
				mp3OutBuffer = &buf1;											
			} 
		}else {
			setLED(WAITING_LED);
		}
	}
}

void TIM8_UP_TIM13_IRQHandler(void) {
	
	TIM8->SR = ~(1 << 0);													//Interrupt zurücknehmen 
	interrupt_Counter++;
	
	
	
	if((irsInBuffer->isEmpty)){
		setLED(UNDERFLOW_LED);
	}else {
		resetLED(UNDERFLOW_LED);
	
		DAC->DHR12R1 = irsInBuffer->data[idx_ISR];												//an DAC weiterleiten
		irsInBuffer->data[idx_ISR];
		idx_ISR += 1;
		
		if(idx_ISR >= BUFFER_SIZE){ 
			idx_ISR = 0;
			
			
			irsInBuffer->isEmpty = 1;
			if(irsInBuffer == &buf1){ irsInBuffer = &buf2;}
			else{ irsInBuffer = &buf1;}
		}
	}
}

 void start_TIM8_DAC(void){
     
     GPIO_InitTypeDef gpio;
 /*____________________________________T = 44100 Hz___________________________________*/
	RCC->APB2ENR |= RCC_APB2ENR_TIM8EN; 									// Takt fuer Timer 8 einschalten	 
	 
	TIM8->CR1 = 0;															// Timer disabled
	TIM8->CR2 = 0;															// Timer disabled
	TIM8->PSC = 0; 															// Prescaler
	TIM8->ARR = N_ARR; 														// Auto reload register
	TIM8->DIER = TIM_DIER_UIE; 												// Interrupt einschalten
	TIM8->CR1 = TIM_CR1_CEN | TIM_CR1_ARPE; 								// Enable Timer(Counter Enable) , enable preload
	NVIC_EnableIRQ(TIM8_UP_TIM13_IRQn);
	

	 //DAC_START
	DAC->CR = 0;
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_DAC, ENABLE); //Enabling Clock for DAC1
	DAC->CR |= (DAC_CR_EN1 << 0);
    
     //Dac : Pins PA4 und PA5 müssen als analoge Pins konfiguriert werden ( Pin 6 und 
	gpio.GPIO_Mode = GPIO_Mode_AIN;
    gpio.GPIO_OType = GPIO_OType_PP;
    gpio.GPIO_PuPd = GPIO_PuPd_UP;
    gpio.GPIO_Speed = GPIO_Speed_50MHz;

    gpio.GPIO_Pin = GPIO_Pin_4 | GPIO_Pin_5;
    GPIO_Init(GPIOI, &gpio);
	
	
 }
 
 void pwm_Init(void){
 
    //#define PB1 1
    ////PWM1 ist PB1 ist TIM8_CH3N
    //RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;
    //GPIOB->MODER &= ~(3u << (PB1 * 2));
    //GPIOB->MODER |= GPIO_Mode_AF << (PB1 * 2);
    //GPIOB->OSPEEDR &= ~(3u << (PB1 * 2));
    //GPIOB->OSPEEDR |= GPIO_Speed_50MHz << (PB1 * 2);
    //GPIOB->OTYPER &= ~(1 << (PB1));
    //GPIOB->OTYPER |= GPIO_OType_PP << (PB1);
    //GPIOB->PUPDR &= ~(3 << (PB1 * 2));
    //GPIOB->PUPDR |= GPIO_PuPd_UP << (PB1 * 2);
    //GPIOB->AFR[0] &= ~(0xf << (PB1 * 4));
    //GPIOB->AFR[0] |= GPIO_AF_TIM8 << (PB1 * 4);
    //     
     
    //  RCC->APB2ENR |= RCC_APB2ENR_TIM8EN; // Takt fuer Timer 8 einschalten
    //  TIM8->CR1 = 0; // Timer disabled
    //  TIM8->CR2 = 0;
    //  TIM8->PSC = 0; // Prescaler, Timertakt: 1 MHz
    //  TIM8->ARR = 16800-1; // Auto reload register, Tpwm = 100usec
    //  TIM8->CCR3 = 16800/2; // Erster Schaltzeitpunkt
    //  TIM8->CCMR2 = TIM_CCMR2_OC3M_2 | TIM_CCMR2_OC3M_1;
    //  TIM8->CCER = TIM_CCER_CC3NE;
    //  TIM8->BDTR = TIM_BDTR_MOE;
    //  TIM8->CR1 = TIM_CR1_CEN | TIM_CR1_ARPE; // Enable Timer, enable preload
     
     //NVIC kommt noch 
 }
 
 
void SysTick_Handler(){
	msec++;
}

void fuelle_puffer(volatile buffer_t *buf){
		int i;
		unsigned int idx = 0;
		int buf_input= 0;
		int val = 0;
	
		for(i = 0; i < BUFFER_SIZE; i++){
			idx = fi >> FIXPOINT_ARITH;			//index zuweisung
			val = tabelle[idx];							//wert holen
			buf_input = ( a +  amplitude * val) >> FIXPOINT_ARITH;		//berechnung der DA-Wandler N = a + b*N-stuetz
			buf->data[i] = buf_input;				//wert in buffer einfuegen		
			fi = (fi + frequency) % SHIFTED_TABLE_SIZE;			//next index berechnen
	}
	buf->isEmpty = 0;
}


