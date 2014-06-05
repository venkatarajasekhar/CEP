#ifndef SPI_MEM_H_
#define SPI_MEM_H_

#include <stdint.h>

// spi-memory ids
#define SPI_MEM_WORK 1
#define SPI_MEM_WORK_H (GPIOG->BSRRH = (1<<6))
#define SPI_MEM_WORK_L (GPIOG->BSRRL = (1<<6))

#define SPI_MEM_ORIGINAL 2
#define SPI_MEM_ORIGINAL_H (GPIOB->BSRRH = (1<<9))
#define SPI_MEM_ORIGINAL_L (GPIOB->BSRRL = (1<<9))

unsigned int spiFlashMemRead(unsigned int chip_sel, uint32_t address, uint8_t* buffer, int bufferSize);
unsigned int spiFlashMemErase(unsigned int chip_sel, uint32_t address, uint32_t numberOfBytes);
unsigned int spiFlashMemWrite(unsigned int chip_sel, uint32_t address, uint8_t* buffer, int numBytes);
uint32_t spiReadManufacturerId(unsigned int chip_sel);
uint8_t spiFlashMemChipCompare(void);
uint8_t spiFlashMemChipCopy(unsigned int chip_src, unsigned int chip_dst);

#endif /* SPI_MEM_ */
