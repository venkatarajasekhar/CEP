#ifndef SPI_H_
#define SPI_H_

#include <stdint.h>

void spi_setup(void);
uint8_t spi_readByte(void);
void spi_writeByte(uint8_t byte);

#endif /* SPI_ */
