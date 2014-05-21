#include <stm32f4xx.h>
#include <stm32f4xx_rcc.h>
#include "CE_Lib.h"
#include "tft.h"
//#include "usart.h"
//#include "keypad.h"
#include "functiongen.h"
#include "global.h"
#include "labor4.h"
#include "peripherals.h"
#include "dac.h"



#define N_ARR (168000000 / 44100)-1
#define SCREEN_UPDATE_CYCLE 168000



typedef struct{
	int isEmpty;
	int data [BUFFER_SIZE];
} buffer_t;

void TIM8_UP_TIM13_IRQHandler(void);
void start_TIM8(void);

char msec_Buf[10];
char interupt_Buf[10];
char form_Buf[10];
char freq_Buf[10];

int interrupt_Counter = 0;

volatile int idx_ISR = 0;
 
volatile static buffer_t buf1;
volatile static buffer_t buf2;

volatile static buffer_t* bgBuffer;
volatile static buffer_t* isrBuffer;

int mseczaehlvar = 0;

volatile uint16_t* val;

static volatile int msec;
//static int y = 0;
//static int i = 0;
		
int frequency = FREQUENCY_LOW;
int graph_type = SINUS;
int amplitude = AMPLITUDE_1V;
int srefresh = SREFRESH_ON;
		
		
/*Befuellt den uebergebenen Buffer*/
void fill(volatile buffer_t *buffer){
	int i;
	
	for(i = 0; i < BUFFER_SIZE; i++){
		buffer->data[i] = calc();
	}
	
	buffer->isEmpty = 0;
}		
		
void labor4(void) {
	int i = 0;
	
	RCC_ClocksTypeDef RCC_Clocks;
   
	initCEP_Board();

	/* SysTick end of count event each 10ms */
	RCC_GetClocksFreq(&RCC_Clocks);
	SysTick_Config(RCC_Clocks.HCLK_Frequency / 1000);

	TFT_cursor_off();
	start_TIM8();	
	dac_setup();
	
	buf1.isEmpty = 1;
	buf2.isEmpty = 1;
	
	bgBuffer = &buf1;																//start with buf1
	isrBuffer = &buf1;
	
	msec = 0;
	
	while(1){
		
		read_buttons();
		
		// screen nur nach x intervallen updaten
		if(mseczaehlvar <= SCREEN_UPDATE_CYCLE) {
			mseczaehlvar++;
		} else {
			mseczaehlvar = 0;
		}
		
		if(srefresh && !(mseczaehlvar == SCREEN_UPDATE_CYCLE)){
			ITM->PORT[8].u32 = 0;
			TFT_gotoxy(1,1);
			TFT_puts("msec: ");
			sprintf(msec_Buf, "%d" , msec);
			TFT_puts(msec_Buf);
			
			TFT_gotoxy(1,2);
			TFT_puts("Anzahl Values: ");
			sprintf(interupt_Buf, "%d" , interrupt_Counter);
			TFT_puts(interupt_Buf);
			
			TFT_gotoxy(1,3);
			TFT_puts("Frequenz: ");
			sprintf(freq_Buf, "%d", frequency);
			TFT_puts(freq_Buf);			
			ITM->PORT[8].u32 = 1;
		}
		
		
		
		if(bgBuffer->isEmpty){
			resetLED(WAITING_LED);
			
			ITM->PORT[9].u32 = 0;	
			for(i = 0; i < BUFFER_SIZE; i++){
				bgBuffer->data[i] = calc();	// calc aufrufen, wert in buffer einfuegen
			}				
				
			bgBuffer->isEmpty = 0;
			ITM->PORT[9].u32 = 1;			
		
			// switch Buffer
			if(bgBuffer == &buf1) {
				bgBuffer = &buf2;											
			} else {
				bgBuffer = &buf1;											
			} 
		}else {
			setLED(WAITING_LED);
		}
	}
}

void TIM8_UP_TIM13_IRQHandler(void) {
	
	interrupt_Counter++;
	
	TIM8->SR = ~(1 << 0);													//Interrupt zurücknehmen 
	
	if(!(isrBuffer->isEmpty)) {												//continue reading ? 
		GPIOI->ODR = (1<<7);												//Underflow-LED an
	} else {
	
		GPIOI->ODR = (0<<7);												//Underflow-LED aus
	
		DAC->DHR12R1 = isrBuffer->data[idx_ISR];												//an DAC weiterleiten
		
		idx_ISR += 1;
		
		if(idx_ISR >= BUFFER_SIZE){ 
			idx_ISR = 0;
			
			
			isrBuffer->isEmpty = 0;
			if(isrBuffer == &buf1){ isrBuffer = &buf2;}
			if(isrBuffer == &buf2) {isrBuffer = &buf1;}
		}
	}
}

 void start_TIM8(void){
 /*____________________________________T = 44100 Hz___________________________________*/
	RCC->APB2ENR |= RCC_APB2ENR_TIM8EN; 									// Takt fuer Timer 8 einschalten	 
	 
	TIM8->CR1 = 0;															// Timer disabled
	TIM8->CR2 = 0;															// Timer disabled
	TIM8->PSC = 0; 															// Prescaler
	TIM8->ARR = N_ARR; 														// Auto reload register
	TIM8->DIER = TIM_DIER_UIE; 												// Interrupt einschalten
	TIM8->CR1 = TIM_CR1_CEN | TIM_CR1_ARPE; 								// Enable Timer(Counter Enable) , enable preload

	//NVIC_SetPriorityGrouping(2);
	//NVIC_SetPriority(TIM8_UP_TIM13_IRQn, 8);
	NVIC_EnableIRQ(TIM8_UP_TIM13_IRQn);
 }
 
void SysTick_Handler(){
	msec++;
}

