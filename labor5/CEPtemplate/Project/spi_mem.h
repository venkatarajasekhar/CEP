#ifndef SPI_MEM_H_
#define SPI_MEM_H_

#include <stdint.h>

void spi_mem_EraseChip(unsigned int chip_sel);
unsigned int spi_mem_ReadManufacturerID(unsigned int chip_sel);
uint32_t spi_mem_ReadManufacturerID_Heitmann(void);

void spiFlashMemRead(unsigned int chip_sel, uint32_t address, uint8_t* buffer);
void spiFlashMemErase(unsigned int chip_sel, uint32_t address);
void spiFlashMemWrite(unsigned int chip_sel, uint32_t address, uint8_t* buffer);
uint32_t spiReadManufacturerId(unsigned int chip_sel);


#endif /* SPI_MEM_ */
