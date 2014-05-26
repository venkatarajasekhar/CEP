#ifndef SPI_MEM_H_
#define SPI_MEM_H_

void spi_mem_EraseChip(unsigned int chip_sel);
unsigned int spi_mem_ReadManufacturerID(unsigned int chip_sel);

#endif /* SPI_MEM_ */
