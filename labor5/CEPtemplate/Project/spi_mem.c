#include <stm32f4xx.h>
#include "spi.h"
#include "spi_mem.h"
#include <stdio.h>

// specific spi_mem commands
#define READ_MANUFACTURER_ID 0x9f
#define READ_ARRAY 0x0b
#define READ_STATUS_REGISTER 0x05
#define WRITE_STATUS_REGISTER_BYTE_1 0x01
#define CHIP_ERASE 0x60
#define WRITE_ENABLE 0x06
#define WRITE_DISABLE 0x04
#define Read

// status register
#define NEW_SPRL_VALUE 0x80
#define GLOBAL_PROTECT 0x3c
#define STATUS_REG_BUSY 0x01

uint8_t spi_mem_ReadByte(unsigned int chip_sel, unsigned int address) {
	uint8_t ret = 0;
	
	spi_writeByte(chip_sel, READ_ARRAY);
	
	ret = spi_readByte(chip_sel);
	
	return ret;
}


///*

//1. in speicherzelle gucken ob belegt
//2. wenn ja, block sichern
//3. block loeschen
//4. im gespeicherten block wert aendern
//5. block schreiben

//*/
//void spi_mem_WriteByte(unsigned int chip_sel) {
//	uint8_t ret = 0;
//	
//	// unprotect sectors
//	spi_writeByte(chip_sel, READ_ARRAY);
//	
//	ret = spi_readByte(chip_sel);
//	
//	return ret;
//}

void spi_mem_EraseChip(unsigned int chip_sel) {
	uint8_t status_reg = 0;
	uint16_t busy = 1;
	
	// write enable
	spi_writeByte(chip_sel, WRITE_ENABLE);	// send command
	
	// read status register
	spi_writeByte(chip_sel, READ_STATUS_REGISTER);	// send command
	status_reg = spi_readByte(chip_sel);						// read byte 1
	spi_readByte(chip_sel);													// ignore byte 2
	
	// set unprotect
	status_reg |= GLOBAL_PROTECT;
	status_reg &= ~NEW_SPRL_VALUE;
	
	// write status register
	spi_writeByte(chip_sel, WRITE_STATUS_REGISTER_BYTE_1);	// send command
	spi_writeByte(chip_sel, status_reg);										// value
	
	// chip erase
	spi_writeByte(chip_sel, CHIP_ERASE);						// send command
	
	// check for ready
	spi_writeByte(chip_sel, READ_STATUS_REGISTER);	// send command
	do{
		busy = spi_readByte(chip_sel);								// read byte 1
		spi_readByte(chip_sel);												// ignore byte 2
	}while((busy & STATUS_REG_BUSY) != 0);
	
	// read status register
	spi_writeByte(chip_sel, READ_STATUS_REGISTER);	// send command
	status_reg = spi_readByte(chip_sel);						// read byte 1
	spi_readByte(chip_sel);													// ignore byte 2
	
	// set protect
	status_reg &= ~GLOBAL_PROTECT;
	
	// write status register
	spi_writeByte(chip_sel, WRITE_STATUS_REGISTER_BYTE_1);	// send command
	spi_writeByte(chip_sel, status_reg);										// value
	
	// write enable
	spi_writeByte(chip_sel, WRITE_DISABLE);	// send command
}

unsigned int spi_mem_ReadManufacturerID(unsigned int chip_sel) {
	unsigned int ret = 0;
	
	spi_writeByte(chip_sel, READ_MANUFACTURER_ID);
	printf("\ntestx");fflush(stdout);
	ret = spi_readByte(chip_sel);								// manufaturer id
	ret = ret & (spi_readByte(chip_sel) << 16);	// device id part 1
	ret = ret & (spi_readByte(chip_sel) << 8);  // device id part 2
	
	return ret;
}

uint16_t spi_mem_ReadManufacturerID_Heitmann() {
	uint16_t id = 0;
	
	GPIOG->BSRRH = (1<<6);
	
	SPI3->DR = 0x9f;
	while( (SPI3->SR & (1<<0)) == 0 );
	id = SPI3->DR;
		
	SPI3->DR = 0;
	while( (SPI3->SR & (1<<0)) == 0 );
	id = SPI3->DR;
	
	SPI3->DR = 0;
	while( (SPI3->SR & (1<<0)) == 0 );
	id = (id<<8) | SPI3->DR;
	
	SPI3->DR = 0;
	while( (SPI3->SR & (1<<0)) == 0 );
	id = (id<<8) | SPI3->DR;
	
	GPIOG->BSRRL = (1<<6);
	
	return id;
}

