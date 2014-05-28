#ifndef SPI_H_
#define SPI_H_

#include <stdint.h>

void spi_setup(void);
uint8_t spi_readByte(unsigned int chip_sel);
void spi_writeByte(unsigned int chip_sel, uint8_t byte);

#endif /* SPI_ */
