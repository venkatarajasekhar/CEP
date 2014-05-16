#include <stm32f4xx.h>
#include <stm32f4xx_rcc.h>
#include <stm32f4xx_gpio.h>
#include "dac_test.h"


void dac_test(void) {
	
	
	// takt fuer dac und gpio aktivieren
	RCC->APB1ENR |= RCC_APB1ENR_DACEN | RCC_AHB1ENR_GPIOAEN;
	
	// ausgangspin aout konfiguerieren und aktivieren
	GPIOA->MODER = (GPIOA->MODER & ~(3u << (4 * 2))) | (GPIO_Mode_AIN << (4 * 2));
}
