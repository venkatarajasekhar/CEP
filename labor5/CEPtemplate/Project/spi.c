#include "stm32f4xx_spi.h"
#include "spi.h"

/*
 * inititialisieren von cr1 und cr2
 */
void spi_setup(void) {
	SPI3->CR1 = 0 | SPI_CR1_SPE | SPI_CR1_MSTR | SPI_CR1_CPOL | SPI_CR1_CPHA;
	SPI3->CR2 = 0;
}

/*
 * reads a byte from spi interface
 */
uint8_t spi_readByte(void) {
	uint8_t ret = 0;
	
	SPI3->DR = 0;

	while((SPI3->SR & SPI_SR_RXNE) == 0 );

	ret = SPI3->DR;

	return ret;
}

/*
 * writes a byte to the spi interface
 */
void spi_writeByte(uint8_t byte) {
	// loeschregister
	//GPIOG->BSRRH = device_mask; //notwendig? warum?
	
	SPI3->DR = byte;

	while((SPI3->SR & SPI_SR_RXNE) == 0 );
	
	// setzregister
	//GPIOG->BSRRL = device_mask; //notwendig? warum?
}


