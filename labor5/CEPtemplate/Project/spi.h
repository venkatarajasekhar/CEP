#ifndef SPI_H_
#define SPI_H_

#include <stdint.h>

void spi_setup(void);
/*__inline*/uint8_t spiTransfer(uint8_t data);

#endif /* SPI_ */
