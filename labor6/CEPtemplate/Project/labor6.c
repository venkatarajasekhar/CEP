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

#define N_ARR ((CPU_FREQ/SAMPLE_FREQ)-1) 		
#define SCREEN_UPDATE_CYCLE 168000
#define BUF_SIZE MAX_NGRAN*MAX_NCHAN*MAX_NSAMP
#define OFFSET 32768
#define REPLAY_ADDRESS 0
#define SKIP_ADDRESS 200000

//Prototypen
void TIM8_UP_TIM13_IRQHandler(void);
void setup_TIM8_DAC_PWM(void);
//void pwm_Init(void);
void print_display(void);

//Main Buffer (SPI-Daten kommen hier rein und werden dann vom MP3-Dekoder decodiert und in den eigentlichen Buffer reingeschrieben
uint8_t mainBuf[MAINBUF_SIZE];
uint8_t* ptrMainBuf = mainBuf;
uint8_t mainBuf_empty = 1;

//Input- / Output- Buffer Struktur
typedef struct{
	int isEmpty;
	int16_t data [BUF_SIZE];   // 2 * 2 *  576 
} buffer_t;

buffer_t buf1;
buffer_t buf2;
buffer_t* mp3OutBuffer;
buffer_t* irsInBuffer;

volatile int idx_ISR = 0;
volatile int msec;
char msec_Buf[10];
char interupt_Buf[10];
char freq_Buf[20];


int interrupt_Counter = 0;
int mseczaehlvar = 0;
int fi = 0;

//unsigned int frequency;
unsigned int play_modus;
int *tabelle = sinus_table;
unsigned int amplitude;
int srefresh = SREFRESH_OFF;

//labor6
int syncword_address =0;
uint32_t spi_address = 0; 
uint16_t pwmVal = 0;
HMP3Decoder mp3dec;
int run = 1;
float SCALE_PWM = (65536.0)/(N_ARR);
int bytesLeft = 0;
int bytesTilSyncWord = 0;
int decodeRetVal = 0;

void labor6(void) {
		
	RCC_ClocksTypeDef RCC_Clocks;
	msec = 0;
	int i = 0;
	
	//Amplitude 1.0V (b_big)
	amplitude = b_big;
	
	//INIT
	initCEP_Board();
  spi_setup();
	setup_TIM8_DAC_PWM();
	mp3dec = MP3InitDecoder();
	
	//SysTick end of count event each 10ms 
	RCC_GetClocksFreq(&RCC_Clocks);
	SysTick_Config(RCC_Clocks.HCLK_Frequency / 1000);

	TFT_cursor_off();
	
	buf1.isEmpty = 1;
	buf2.isEmpty = 1;
	
	mp3OutBuffer = &buf1;		//start with buf1
	irsInBuffer = &buf1;

	TFT_cls();
	TFT_gotoxy(1,1);
	TFT_puts("Frequenz:   5000");
	
	do{
		//Check Buttons
		read_buttons();
		
		//ausgabe
		print_display();
			
		//ueberpruefung ob Adresse uebersprungen werden soll 
		if(play_modus == REPLAY){
			spi_address = REPLAY_ADDRESS;
			bytesLeft = 0;
			
		}
		if(play_modus == SKIP){
			spi_address += SKIP_ADDRESS;
			bytesLeft = 0;
		}
		
		//wenn der mainBuf leer ist, muss der durch readSPI mit mp3-daten gefuellt werden
		if (mainBuf_empty) {																								

			do {
				
				//Shift bytes to the beginning
				/**
				* Bsp:  mainBufSize = 10
				* 			readBytes = 7 --> bytesLeft = 3
				* 			for(){
				* 				mainBuffer[0] = mainBuffer[(10-3)+0]	idx[0] = idx[7]
				* 				mainBuffer[1] = mainBuffer[(10-3)+1]	idx[1] = ide[8] ...
				*/
				for(i = 0; i < bytesLeft; i++) {															//die ungelesene bytes am anfang stellen
					mainBuf[i] = mainBuf[(MAINBUF_SIZE - bytesLeft) + i];	
				}	
																																											
				//Reads size-bytes from current_SPI_Address and writes them into the given array ((mainBuffer + nBytesLeft))																																										
				//also nach diesem aufruf, ist der mainBuf voll und spiadresse muss verschoben werden			
				spiFlashMemRead(SPI_MEM_WORK, spi_address, (mainBuf + bytesLeft),  MAINBUF_SIZE - bytesLeft);

				//nach sync word in dem mainBuf suchen 
				bytesTilSyncWord = MP3FindSyncWord(mainBuf, MAINBUF_SIZE);	
			
				
				if (bytesTilSyncWord == 0) {	//falls guelltige date gleich am anfang liegen
					spi_address =  spi_address + (MAINBUF_SIZE - bytesLeft);
				} else if (bytesTilSyncWord < 0) {//fehler, kein sync word gefunden
					run = 0;
				} else if (bytesTilSyncWord > 0) {//falls skip word an der n-te adresse gefunden wurde, verschiebe ich die spiadresse um n, damit ich beim naechsten durchlauf vom flash nur die guelltige daten lese (also muell ueberspringen)
					spi_address = (spi_address - bytesLeft )+ bytesTilSyncWord;
				}
				
				bytesLeft = 0;		//MUSS DAS HIER NICHT AUSSERHALB DER WHILE ?? DAMIT DIE NBYTES NICHT VERLOREN GEHEN 	
			} while(bytesTilSyncWord != 0 && run);	
			
			mainBuf_empty = 0; //mainBuf ist voll
		}				
	
		
		if (run){	//wenn kein fehler
			 	
			//wenn der mp3OutBuf voll ist ODER der MainBuf leer ist, dann warten (WAITING-LED) anschalten 
			if (!mp3OutBuffer->isEmpty || mainBuf_empty){									
				setLED(WAITING_LED);
			} else{
				resetLED(WAITING_LED);				
				
				bytesLeft = MAINBUF_SIZE;																					//in nBytesLeft steht wieviele daten aus dem MainBuf noch in dem mp3OutBuf uebertragen werden muessen
				ptrMainBuf = mainBuf;																			//mainBufPointer soll auf MainBuff zeigen, obwohl es bei der initialisierung schon gemacht wurde !!
				
				/**
					* para1: decoder instance
					*	para2: buffer aus dem die daten decodet werden sollen
					* para3: (input) --> anzahl gueltige bytes, die gelesen werden sollen, 
					* 			 (output)--> input - gelesene bytes, also die bytes die noch gelesen werden muessen
					* para4: der buffer in dem geschrieben werden soll, der pointer wird geupdatet (bis wo der voll geschrieben wurde)
					*/
				
				//nach diesem aufruf ist der mp3OutBuf auf jeden fall voll
				decodeRetVal = MP3Decode(mp3dec, &ptrMainBuf, &bytesLeft, mp3OutBuffer->data, 0);		//decodeResult -->(0 means no error, < 0 means error)
				
				
				mainBuf_empty = 1;																									//der mainBuf ist nicht komplett voll
				
				if (decodeRetVal < 0) {																							//fehler beim decode aufgetreten
					run = 0;
				} else {					
					mp3OutBuffer->isEmpty = 0;																			//der mp3OutBuffer wurde voll geschrieben, bereit fuer die ISR
					if(mp3OutBuffer == &buf1) {																			//buffer ist voll, also wechseln
						mp3OutBuffer = &buf2;
					} else if (mp3OutBuffer == &buf2) {
						mp3OutBuffer = &buf1;
					}
				}
			}
		}
		
	} while (run);
	
	MP3FreeDecoder(mp3dec);
	
	//forever
	while(1);
}

void TIM8_UP_TIM13_IRQHandler(void) {
	
	TIM8->SR = ~(1 << 0);	//Interrupt zurücknehmen 
	interrupt_Counter++;    //zaehle Interrupts	
	
    
  if(irsInBuffer->isEmpty) {
        setLED(UNDERFLOW_LED);  //warte bis buffer gelesen werden kann
  } else {
        resetLED(UNDERFLOW_LED);
    
		//DAC werte skallieren N = a + b*N-stuetz
		DAC->DHR12L1 = ((a + amplitude * irsInBuffer->data[idx_ISR]) >> FIXPOINT_ARITH);    //den aktuellen index an dem Data-Holding-Register
		DAC->DHR12L2 = ((a + amplitude * irsInBuffer->data[idx_ISR+1]) >> FIXPOINT_ARITH);	//den naechsten index an dem Data-Holding-Register	
	
		//skalierter PWM wert		
		pwmVal = (irsInBuffer->data[idx_ISR] + OFFSET)/SCALE_PWM;	 //-> (buf->data + 32768)/17.0
		//The active capture/compare register contains the value to be compared to the counter
		TIM8->CCR2 = pwmVal;
	
		pwmVal = (irsInBuffer->data[idx_ISR+1] + OFFSET)/SCALE_PWM;
		TIM8->CCR3 = pwmVal;	
  
		idx_ISR += 2;
		     
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
	RCC->APB2ENR |= RCC_APB2ENR_TIM8EN; // Takt fuer Timer 8 einschalten
 
  // led 4 und 5 auf gpioi
	gpio.GPIO_Mode = GPIO_Mode_AIN;
  gpio.GPIO_OType = GPIO_OType_PP;
  gpio.GPIO_PuPd = GPIO_PuPd_UP;
	gpio.GPIO_Speed = GPIO_Speed_100MHz;
  gpio.GPIO_Pin = GPIO_Pin_4 | GPIO_Pin_5;
  GPIO_Init(GPIOI, &gpio);
    
  // pin 1 und 2 unf gpiob
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);
	gpio.GPIO_Mode = GPIO_Mode_AF;
	gpio.GPIO_OType = GPIO_OType_PP;
	gpio.GPIO_PuPd = GPIO_PuPd_NOPULL;
	gpio.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_1;	
	gpio.GPIO_Speed	= GPIO_Speed_100MHz;
	GPIO_Init(GPIOB, &gpio);

	GPIOB->AFR[0] |= 0x03 << 0;
	GPIOB->AFR[0] |= 0x03 << 1*4;
    
  // timer enable
  TIM8->CR1 = 0;	// Timer disabled
	TIM8->CR2 = 0;	// Timer disabled
	TIM8->PSC = 0; // Prescaler
	TIM8->ARR = N_ARR; // Auto reload register
	TIM8->DIER = TIM_DIER_UIE; // Interrupt einschalten
	TIM8->CR1 = TIM_CR1_CEN | TIM_CR1_ARPE; // Enable Timer(Counter Enable) , enable preload

  //Enable PWM
	TIM8->CCMR1 |= TIM_CCMR1_OC2M_2 | TIM_CCMR1_OC2M_1 | TIM_CCMR1_OC2PE; //Channel 2
	TIM8->CCMR2 |= TIM_CCMR2_OC3M_2 | TIM_CCMR2_OC3M_1 | TIM_CCMR2_OC3PE; //Channel 3
	TIM8->CCER |= TIM_CCER_CC3NE | TIM_CCER_CC2NE;
	TIM8->BDTR = TIM_BDTR_MOE;
	TIM8->CR1 = TIM_CR1_CEN | TIM_CR1_ARPE; // Enable Timer, enable preload

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


//void pwm_Init(void){
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
// }
 
 
void SysTick_Handler(){
	msec++;
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
			TFT_gotoxy(1,3);
			TFT_puts("msec: ");
			sprintf(msec_Buf, "%d" , msec);
			TFT_puts(msec_Buf);
			
			TFT_gotoxy(1,4);
			TFT_puts("Anzahl Values: ");
			sprintf(interupt_Buf, "%d" , interrupt_Counter);
			TFT_puts(interupt_Buf);
			ITM->PORT[8].u32 = 1;
		}
}
