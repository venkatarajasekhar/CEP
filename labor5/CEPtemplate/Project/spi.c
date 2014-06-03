#include <stm32f4xx_spi.h>
#include <stm32f4xx_rcc.h>
#include "spi.h"
#include "global.h"
#include <stm32f4xx_rcc.h>
#include <stm32f4xx_gpio.h>
#include <stdlib.h>

//static unsigned int init_done = 0;

/*
 * inititialisieren von cr1 und cr2
 */
void spi_setup(void) {

	// spi clock enable 
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI3, ENABLE);
	//RCC->APB1ENR |= RCC_APB1ENR_SPI3EN;
	//RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN | RCC_AHB1ENR_GPIOGEN | RCC_AHB1ENR_GPIOCEN;
	
	SPI3->CR1 = SPI_CR1_SPE | SPI_CR1_MSTR | SPI_CR1_CPOL | SPI_CR1_CPHA | SPI_CR1_SSI | SPI_CR1_SSM;  //| SPI_CR1_BR_1 | SPI_CR1_BR_2
	SPI3->CR2 = 0;
}

/*
 * sends/receives a single byte
 */
/*__inline*/ uint8_t spiTransfer(uint8_t data) {
    SPI3->DR = data;
	while((SPI3->SR & SPI_SR_RXNE) == 0 ) {}
	
    return SPI3->DR;
}  


