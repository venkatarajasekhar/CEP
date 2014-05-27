#include "stm32f4xx_spi.h"
#include "spi.h"
#include "global.h"
#include <stm32f4xx_rcc.h>
#include <stm32f4xx_gpio.h>

static unsigned int init_done = 0;

/*
 * inititialisieren von cr1 und cr2
 */
static void spi_setup(void) {
	GPIO_InitTypeDef gpio;
	
	
	SPI3->CR1 = 0 | SPI_CR1_SPE | SPI_CR1_MSTR | SPI_CR1_CPOL | SPI_CR1_CPHA;
	SPI3->CR2 = 0;
	
	//SPI enablen und es ist nicht auf AHB

	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOG, ENABLE); 

  gpio.GPIO_Mode = GPIO_Mode_OUT;
  gpio.GPIO_OType = GPIO_OType_PP;
  gpio.GPIO_PuPd = GPIO_PuPd_UP;
  gpio.GPIO_Speed = GPIO_Speed_50MHz;

	//GPIOG & GPIOB, pin9 und pin6 intitialisieren
  gpio.GPIO_Pin = GPIO_Pin_9;
  GPIO_Init(GPIOB, &gpio);

  gpio.GPIO_Pin = GPIO_Pin_6;
  GPIO_Init(GPIOG, &gpio);
}

/*
 * reads a byte from spi interface
 */
uint8_t spi_readByte(unsigned int chip_sel) {
	uint8_t ret = 0;
	
	if(!init_done) {
		spi_setup();
		init_done = 1;
	}	
	
	// chip-select
	if(chip_sel == SPI_MEM1) {
		SPI_MEM1_H;
	} else {
		SPI_MEM2_H;
	}		
	
	SPI3->DR = 0;

	while((SPI3->SR & SPI_SR_RXNE) == 0 );

	ret = SPI3->DR;
	
	// chip-select
	if(chip_sel == SPI_MEM1) {
		SPI_MEM1_L;
	} else {
		SPI_MEM2_L;
	}	

	return ret;
}

/*
 * writes a byte to the spi interface
 */
void spi_writeByte(unsigned int chip_sel, uint8_t byte) {
	if(!init_done) {
		spi_setup();
		init_done = 1;
	}	
	
	// chip-select
	if(chip_sel == SPI_MEM1) {
		SPI_MEM1_H;
	} else {
		SPI_MEM2_H;
	}	
	
	SPI3->DR = byte;

	while((SPI3->SR & SPI_SR_RXNE) == 0 );
	
	// chip-select
	if(chip_sel == SPI_MEM1) {
		SPI_MEM1_L;
	} else {
		SPI_MEM2_L;
	}	
}


