/* Includes ------------------------------------------------------------------*/
#include <stm32f4xx.h>
#include <stm32f4xx_rcc.h>
#include "CE_Lib.h"
#include "tft.h"
#include "usart.h"
#include "buffer.h"
#include "functiongen.h"
#include "playground.h"
#include "global.h"

//#include "keypad.h"

#define N_PSC 15 -1	// -1 dammit man auf die richtige Frequenz kommt
#define N_ARR 127 -1
volatile int event;

/**
 * @brief  Main program.
 * @param  None
 * @retval None
 */
 
 /*___________________________________PROTOTYPES____________________________________*/
void TIM8_UP_TIM13_IRQHandler(void);
void start_TIM8(void);
 
 /*____________________________________Buffer_______________________________________*/
buffer_t buf1;
buffer_t buf2;
		
buffer_t* bgBuffer;
buffer_t* isrBuffer;
	
int step = 0;
int y = 0;
int i = 0;
		
int main(void) {
	
	RCC_ClocksTypeDef RCC_Clocks;
	event = 0;
   
	initCEP_Board();

	/* SysTick end of count event each 10ms */
	RCC_GetClocksFreq(&RCC_Clocks);
	SysTick_Config(RCC_Clocks.HCLK_Frequency / 1000);

	TFT_cursor_off();
		
	start_TIM8();																			//Timer starten
	
	bgBuffer = &buf1;																	//start with buf1
	
	
	
	while(1){
			
		GPIOI->ODR = (1<<6);														//WAIT-LED aus
		
		while(!is_empty(bgBuffer)) {										//wait until empty
			printf("waiting for buffer to get empty ..\n");fflush(stdout);	
		}
			
		GPIOI->ODR = (1<<6);														//WAIT-LED an
		while(!is_full(bgBuffer)) {
			y = calc_sinus(OUTPUT_FREQ_HIGH, SAMPLE_FREQ, step);
			//neuer wert einfügen
			step++;
			
			if(step == 10){
				step = 0;
			}
			
			i = 0;
			while(i<60000000){
			i++;
			}
			
		}
			
		if(is_empty(isrBuffer) == 1) {									//was it the last value ?
			if(bgBuffer == &buf1) {
				bgBuffer = &buf2;														//switch buffer
			} else {
				bgBuffer = &buf1;														//switch buffer
			} 
		}

	//	fp_test();
	}
	



	
}

void TIM8_UP_TIM13_IRQHandler(void) {
	
	uint16_t* val;
	
	TIM8->SR = ~(1 << 0);															//Interrupt zurücknehmen 
	
	if(is_empty(isrBuffer) == 1) {										//continue reading ? 
		GPIOI->ODR = (1<<7);														//Underflow-LED an
	} else {
	
		GPIOI->ODR = (0<<7);														//Underflow-LED aus
		
		remove_val(isrBuffer, val);											//get value
		//an DAC weiterleiten
		
		if(is_empty(isrBuffer) == 1) {									//was it the last value ?
			if(isrBuffer == &buf1) {
				isrBuffer = &buf2;													//switch buffer
			} else {
				isrBuffer = &buf1;													//switch buffer
			} 
		}
	}
}

 void start_TIM8(void){
 /*____________________________________T = 44100 Hz___________________________________*/
	RCC->APB2ENR |= RCC_APB2ENR_TIM8EN; 							// Takt fuer Timer 8 einschalten
	TIM8->CR1 = 0;																		// Timer disabled
	TIM8->CR2 = 0;																		// Timer disabled
	TIM8->PSC = N_PSC; 																// Prescaler
	TIM8->ARR = N_ARR; 																// Auto reload register
	TIM8->DIER = TIM_DIER_UIE; 												// Interrupt einschalten
	TIM8->CR1 = TIM_CR1_CEN | TIM_CR1_ARPE; 					// Enable Timer(Counter Enable) , enable preload
}
 
void SysTick_Handler(){
	event+=1;
	GPIOI->ODR ^= (1<<5);
}

