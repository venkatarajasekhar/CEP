#include <stm32f4xx.h>
#include <stm32f4xx_rcc.h>
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

	ret = spi_readByte(chip_sel);				// manufaturer id
	ret = ret & (spi_readByte(chip_sel) << 16);	// device id part 1
	ret = ret & (spi_readByte(chip_sel) << 8);  // device id part 2
	
	return ret;
}

uint32_t spi_mem_ReadManufacturerID_Heitmann() {
	uint32_t id = 0;
	uint8_t factory_id = 0;
	uint8_t dev_id1 = 0;
	uint8_t dev_id2 = 0;
	
	// setup
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI3, ENABLE);
	
	SPI3->CR1 = 0 | SPI_CR1_SPE | SPI_CR1_MSTR | SPI_CR1_CPOL | SPI_CR1_CPHA | (1<<8) | (1<<9);
	SPI3->CR2 = 0;
	
	// code aus skript
	GPIOB->BSRRH = (1<<9);
	
	SPI3->DR = 0x9f;
	while( (SPI3->SR & (1<<0)) == 0 );
	SPI3->DR;
		
	SPI3->DR = 0;
	while( (SPI3->SR & (1<<0)) == 0 );
	factory_id = (uint8_t)SPI3->DR;
	
	SPI3->DR = 0;
	while( (SPI3->SR & (1<<0)) == 0 );
	dev_id1 = (uint8_t)SPI3->DR;
	
	SPI3->DR = 0;
	while( (SPI3->SR & (1<<0)) == 0 );
	dev_id2 = (uint8_t)SPI3->DR;
	
	GPIOB->BSRRL = (1<<9);
	
	id = factory_id | (dev_id1<<8) | (dev_id2<<16);
	
	return id;
}

