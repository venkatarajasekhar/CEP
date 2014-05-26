#include <stm32f4xx.h>
#include "spi.h"
#include "spi_mem.h"

// specific spi_mem commands
#define READ_MANUFACTURER_ID 0x9f

unsigned int spi_mem_ReadManufacturerID(unsigned int device_mask, unsigned int chip_sel) {
	unsigned int ret = 0;
	
	spi_writeByte(chip_sel, READ_MANUFACTURER_ID);
	
	ret = spi_readByte(chip_sel);
	ret = ret & (spi_readByte(chip_sel) << 8);
	ret = ret & (spi_readByte(chip_sel) << 16);
	
	return ret;
}
