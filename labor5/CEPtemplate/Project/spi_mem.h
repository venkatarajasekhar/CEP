#ifndef SPI_MEM_H_
#define SPI_MEM_H_

#include <stdint.h>

void spi_mem_EraseChip(unsigned int chip_sel);
unsigned int spi_mem_ReadManufacturerID(unsigned int chip_sel);
uint16_t spi_mem_ReadManufacturerID_Heitmann(void);

#endif /* SPI_MEM_ */
