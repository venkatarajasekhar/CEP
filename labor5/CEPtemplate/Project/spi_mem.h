#ifndef SPI_MEM_H_
#define SPI_MEM_H_

#include <stdint.h>

//void spi_mem_EraseChip(unsigned int chip_sel);
//unsigned int spi_mem_ReadManufacturerID(unsigned int chip_sel);
//uint32_t spi_mem_ReadManufacturerID_Heitmann(void);

unsigned int spiFlashMemRead(unsigned int chip_sel, uint32_t address, uint8_t* buffer, int bufferSize);
unsigned int spiFlashMemErase(unsigned int chip_sel, uint32_t address, uint32_t numberOfBytes);
//void spiFlashMemEraseBlock(unsigned int chip_sel, uint32_t address,  uint8_t erase_cmd);
void spiFlashMemWrite(unsigned int chip_sel, uint32_t address, uint8_t* buffer, int bufferSize);
uint32_t spiReadManufacturerId(unsigned int chip_sel);
int32_t spiCMP(uint32_t address, uint32_t bytes);

#endif /* SPI_MEM_ */
