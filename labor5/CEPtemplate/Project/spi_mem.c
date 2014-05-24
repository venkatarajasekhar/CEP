#include <stm32f4xx.h>
#include "spi.h"
#include "spi_mem.h"

// specific spi_mem commands
#define READ_MANUFACTURER_ID 0x9f

// spi-memory ids
#define SPI_MEM1 (1<<6)
#define SPI_MEM2 (1<<6)

unsigned int spi_mem_ReadManufacturerID(unsigned int device_mask) {
	unsigned int ret = 0;
	
	// loeschregister
	GPIOG->BSRRH = device_mask;
	
	spi_writeByte(READ_MANUFACTURER_ID);
	
	ret = spi_readByte();
	ret = ret & (spi_readByte() << 8);
	ret = ret & (spi_readByte() << 16);
	
	// setzregister
	GPIOG->BSRRL = device_mask;
	
	return ret;
}