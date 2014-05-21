#include <stm32f4xx.h>
#include <stm32f4xx_rcc.h>
#include <stm32f4xx_gpio.h>
#include "dac.h"

void dac_setup(void) {
	// takt fuer dac und gpio aktivieren
	//RCC->APB1ENR |= RCC_APB1ENR_DACEN | RCC_AHB1ENR_GPIOAEN;
	
	// ausgangspin aout konfiguerieren und aktivieren
	//GPIOA->MODER = (GPIOA->MODER & ~(3u << (4 * 2))) | (GPIO_Mode_AIN << (4 * 2));

  //Enable Dac
	DAC->CR = 0;
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_DAC, ENABLE); //Enabling Clock for DAC1
	DAC->CR |= (DAC_CR_EN1 << 0);
}

void dac_set(uint16_t val) {
	DAC->DHR12R1 = val;
}
