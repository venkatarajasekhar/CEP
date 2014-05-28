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

	RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI3, ENABLE);
	
	SPI3->CR1 = 0 | SPI_CR1_SPE | SPI_CR1_MSTR | SPI_CR1_CPOL | SPI_CR1_CPHA | SPI_CR1_SSI | SPI_CR1_SSM;
	SPI3->CR2 = 0;

	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOG, ENABLE);
}

/*
 * reads a byte from spi interface
 */
uint8_t spi_readByte(unsigned int chip_sel) {
	uint8_t ret = 0;
	
//	if(!init_done) {
//		spi_setup();
//		init_done = 1;
//	}	
	
	// chip-select
	if(chip_sel == SPI_MEM1) {
		SPI_MEM1_H;
	} else {
		SPI_MEM2_H;
	}		
	
	SPI3->DR = 0;
	while((SPI3->SR & SPI_SR_RXNE) == 0 );
	ret = (uint8_t)SPI3->DR;
	
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
//	if(!init_done) {
//		spi_setup();
//		init_done = 1;
//	}	
	
//	// chip-select
//	if(chip_sel == SPI_MEM1) {
//		SPI_MEM1_H;
//	} else {
//		SPI_MEM2_H;
//	}	
	
	SPI3->DR = byte;
	while((SPI3->SR & SPI_SR_RXNE) == 0 );
	SPI3->DR;
	
	// chip-select
	if(chip_sel == SPI_MEM1) {
		SPI_MEM1_L;
	} else {
		SPI_MEM2_L;
	}	
}

/*
 * sends/receives a single byte
 */
__inline uint8_t spiTransfer(uint8_t data) {
    SPI3->DR = data;
	while((SPI3->SR & SPI_SR_RXNE) == 0 ) {}
	
    return SPI3->DR;
}    

