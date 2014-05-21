#include <stm32f4xx.h>
#include <stm32f4xx_rcc.h>
#include "CE_Lib.h"
#include "tft.h"
//#include "usart.h"
//#include "keypad.h"
#include "buffer.h"
#include "functiongen.h"
#include "global.h"
#include "labor4.h"

#define N_ARR (168000000 / 44100)-1

void TIM8_UP_TIM13_IRQHandler(void);
void start_TIM8(void);
 
volatile static buffer_t buf1;
volatile static buffer_t buf2;
volatile static buffer_t* bgBuffer;
volatile static buffer_t* isrBuffer;

static volatile int msec;
//static int y = 0;
//static int i = 0;
		
int frequency = FREQUENCY_LOW;
int graph_type = SINUS;
int amplitude = AMPLITUDE_1V;
int srefresh = SREFRESH_ON;
		
void labor4(void) {
	RCC_ClocksTypeDef RCC_Clocks;
   
	initCEP_Board();

	/* SysTick end of count event each 10ms */
	RCC_GetClocksFreq(&RCC_Clocks);
	SysTick_Config(RCC_Clocks.HCLK_Frequency / 1000);

	TFT_cursor_off();
	start_TIM8();																	//Timer starten
	bgBuffer = &buf1;																//start with buf1
	
	while(1){
			
		GPIOI->ODR = (1<<6);														//WAIT-LED aus
		
		while(!is_empty(bgBuffer)) {												//wait until empty
			printf("waiting for buffer to get empty ..\n");fflush(stdout);	
		}
			
		GPIOI->ODR = (1<<6);														//WAIT-LED an
		while(!is_full(bgBuffer)) {
			// knoepfe abfragen
			
			
			// calc aufrufen, wert in buffer einfuegen
			add_val(bgBuffer, calc());
			
//			i = 0;
//			while(i<60000000){
//			i++;
//			}
			
		}
		
		
		
		
			
		if(is_empty(isrBuffer) == 1) {										//was it the last value ?
			if(bgBuffer == &buf1) {
				bgBuffer = &buf2;											//switch buffer
			} else {
				bgBuffer = &buf1;											//switch buffer
			} 
		}
	}
}

void TIM8_UP_TIM13_IRQHandler(void) {
	
	uint16_t* val;
	
	TIM8->SR = ~(1 << 0);													//Interrupt zurücknehmen 
	
	if(isrBuffer->count == 0) {												//continue reading ? 
		GPIOI->ODR = (1<<7);												//Underflow-LED an
	} else {
	
		GPIOI->ODR = (0<<7);												//Underflow-LED aus
		
		remove_val(isrBuffer, val);											//get value
		DAC->DHR12R1 = *val;												//an DAC weiterleiten
		
		if(isrBuffer->count == 0) {											//was it the last value ?
			if(isrBuffer == &buf1) {
				isrBuffer = &buf2;											//switch buffer
			} else {
				isrBuffer = &buf1;											//switch buffer
			} 
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
}
 
void SysTick_Handler(){
	msec++;

}

