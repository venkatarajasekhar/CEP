#include <stm32f4xx.h>
#include <stdint.h>
#include "spi.h"
#include "spi_mem.h"

// specific spi_mem commands
#define READ_MANUFACTURER_ID 0x9f
#define READ_ARRAY 0x0b


uint8_t spi_mem_ReadByte(unsigned int chip_sel, unsigned int address) {
	uint8_t ret = 0;
	
	spi_writeByte(chip_sel, READ_ARRAY);
	
	ret = spi_readByte(chip_sel);
	
	return ret;
}


/*

1. in speicherzelle gucken ob belegt
2. wenn ja, block sichern
3. block loeschen
4. im gespeicherten block wert aendern
5. block schreiben

*/
void spi_mem_WriteByte(unsigned int chip_sel) {
	uint8_t ret = 0;
	
	// unprotect sectors
	spi_writeByte(chip_sel, READ_ARRAY);
	
	ret = spi_readByte(chip_sel);
	
	return ret;
}

unsigned int spi_mem_ReadManufacturerID(unsigned int chip_sel) {
	unsigned int ret = 0;
	
	spi_writeByte(chip_sel, READ_MANUFACTURER_ID);
	
	ret = spi_readByte(chip_sel);
	ret = ret & (spi_readByte(chip_sel) << 8);
	ret = ret & (spi_readByte(chip_sel) << 16);
	
	return ret;
}


