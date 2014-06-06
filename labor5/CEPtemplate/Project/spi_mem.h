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

#define SPI_MEM_SIZE 0xff000
#define PAGE_SIZE 256

// mem-block size
#define BLOCK_4KB (4 * 1024) //4069
#define BLOCK_32KB (32 * 1024) //32768
#define BLOCK_64KB (64 * 1024) //65536

int spiFlashMemRead(unsigned int chip_sel, uint32_t address, uint8_t* buffer, int bufferSize);
int spiFlashMemErase(unsigned int chip_sel, uint32_t address, uint32_t numberOfBytes);
int spiFlashMemWrite(unsigned int chip_sel, uint32_t address, uint8_t* buffer, int numBytes);
uint32_t spiReadManufacturerId(unsigned int chip_sel);
int spiFlashMemChipCompare(void);
int spiFlashMemCompare(unsigned int address_work, unsigned int address_original, unsigned int bytes);
void spiFlashMemChipCopy(unsigned int chip_src, unsigned int chip_dst);
int spiFlashMemCopy(unsigned int chip_src, unsigned int chip_dst, unsigned int address_src, unsigned int address_dst, unsigned int bytes);

#endif /* SPI_MEM_ */
