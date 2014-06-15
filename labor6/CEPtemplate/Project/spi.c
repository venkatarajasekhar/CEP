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
    
    RCC->APB1ENR |= RCC_APB1ENR_SPI3EN;
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN | RCC_AHB1ENR_GPIOGEN | RCC_AHB1ENR_GPIOCEN;
	
	GPIOB->MODER |= (GPIO_Mode_OUT << (2*9));
	GPIOG->MODER |= (GPIO_Mode_OUT << (2*6));
	GPIOG->BSRRL = GPIO_Pin_6;
	GPIOB->BSRRL = GPIO_Pin_9;
		
	GPIOC->MODER   |= (GPIO_Mode_AF << (2*10))    | (GPIO_Mode_AF << (2*11))    | (GPIO_Mode_AF << (2*12));
	GPIOC->OSPEEDR |= (GPIO_High_Speed << (2*10)) | (GPIO_High_Speed << (2*11)) | (GPIO_High_Speed << (2*12));
	GPIOC->AFR[1]  |= (GPIO_AF_SPI3 << (4*2))     | (GPIO_AF_SPI3 << (4*3))     | (GPIO_AF_SPI3 << (4*4));
	
	SPI3->CR1 = SPI_CR1_SPE | SPI_CR1_MSTR | SPI_CR1_CPOL | SPI_CR1_CPHA | SPI_CR1_SSI | SPI_CR1_SSM;  //| SPI_CR1_BR_1 | SPI_CR1_BR_2
	SPI3->CR2 = 0;
}

/*
 * sends/receives a single byte
 */
inline uint8_t spiTransfer(uint8_t data) {
    SPI3->DR = data;
	while((SPI3->SR & SPI_SR_RXNE) == 0 ) {}
    return SPI3->DR;
}  


