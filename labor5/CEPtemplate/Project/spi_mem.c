#include <stm32f4xx.h>
#include <stm32f4xx_rcc.h>
#include <stdint.h>
#include "spi.h"
#include "spi_mem.h"
#include "global.h"

// specific spi_mem commands
//#define READ_MANUFACTURER_ID 0x9f
//#define READ_ARRAY 0x0b
//#define READ_STATUS_REGISTER 0x05
//#define WRITE_STATUS_REGISTER_BYTE_1 0x01
//#define CHIP_ERASE 0x60
//#define WRITE_ENABLE 0x06
//#define WRITE_DISABLE 0x04
//#define Read

// status register
//#define NEW_SPRL_VALUE 0x80
//#define GLOBAL_PROTECT 0x3c
//#define STATUS_REG_BUSY 0x01

// spi-commands
#define DUMMY 0
#define CmdReadStatusRegister 0x05
#define CmdWriteStatusRegister_Byte_1 0x01
#define CmdWriteEnable 0x06
#define CmdReadArray 0x0b
#define CmdBlockErase 0x52
#define CmdPageProgram 0x02
#define CmdReadManufacturerId 0x9f

// status register
#define BlockSize 256
#define StatusRegReady 0x01
#define AdressHigh 0x00ff0000
#define AdressMiddle 0x0000ff00
#define AdressLow 0x000000ff

/***** util-functions *****/
static void enable_SSEL(unsigned int chip_sel) {
    if(chip_sel == SPI_MEM1) {
		SPI_MEM1_H;
	} else {
		SPI_MEM2_H;
	}
}

static void disable_SSEL(unsigned int chip_sel) {
    if(chip_sel == SPI_MEM1) {
		SPI_MEM1_L;
	} else {
		SPI_MEM2_L;
	}
}

/*
 * unprotects all sectors
 */
static void spiFLashMemGlobalUnprotect(unsigned int chip_sel) {
    // chip-select
	enable_SSEL(chip_sel);

    spiTransfer(CmdWriteStatusRegister_Byte_1);
    spiTransfer(DUMMY);
    
    // chip-unselect
	disable_SSEL(chip_sel);
}   

/*
 * unprotects all sectors
 */
static uint16_t spiFlashMemReadStatusRegister(unsigned int chip_sel) {
    uint8_t val1 = 0;
    uint8_t val2 = 0;
    
    // chip-select
	enable_SSEL(chip_sel);
     
    spiTransfer(CmdReadStatusRegister);
    val1 = spiTransfer(DUMMY);
    val2 = spiTransfer(DUMMY);
    
    // chip-unselect
	disable_SSEL(chip_sel);
    
    return (val1 << 8) | val2; 
}

/*
 * read status register until busy bit has been deleted
 */
static void spiFlashMemWaitReady(unsigned int chip_sel) {
    uint8_t reg_byte_2 = 0;

    // chip-select
	enable_SSEL(chip_sel);

    do {
        spiTransfer(CmdReadStatusRegister);
        spiTransfer(DUMMY);
        reg_byte_2 = spiTransfer(DUMMY);
    } while((reg_byte_2 & StatusRegReady) != 0);
        
    // chip-unselect
	disable_SSEL(chip_sel);
}

/*
 * sets wite-enable
 */
static void spiFlashMemSetWriteEnable(unsigned int chip_sel) {
    // chip-select
	enable_SSEL(chip_sel);

    spiTransfer(CmdWriteEnable);
        
    // chip-unselect
	disable_SSEL(chip_sel);
}

/***** memory-functions *****/

/*
 * reads a block of 256 bytes at given address
 */
void spiFlashMemRead(unsigned int chip_sel, uint32_t address, uint8_t* buffer) {
    int i = 0;
    
    // chip-select
	enable_SSEL(chip_sel);
    
    spiTransfer(CmdReadArray);
    spiTransfer((address & AdressHigh) >> 16);
    spiTransfer((address & AdressMiddle) >> 8);
    spiTransfer(address & AdressLow);
    
    for(i=0; i<BlockSize; i++) {
        buffer[i] = spiTransfer(DUMMY);
    }
    
    // chip-unselect
	disable_SSEL(chip_sel);
}

/*
 * erases 32k of memory starting at given address
 */
void spiFlashMemErase(unsigned int chip_sel, uint32_t address) {
    spiFlashMemSetWriteEnable(chip_sel);
    spiFLashMemGlobalUnprotect(chip_sel);
    spiFlashMemSetWriteEnable(chip_sel);
    
    // chip-select
	enable_SSEL(chip_sel);
    
    spiTransfer(CmdBlockErase);
    spiTransfer((address & AdressHigh) >> 16);
    spiTransfer((address & AdressMiddle) >> 8);
    spiTransfer(address & AdressLow);
    
    // chip-unselect
	disable_SSEL(chip_sel);
    
    spiFlashMemWaitReady(chip_sel);
}

/*
 * writes a block of 256 bytes to given address
 */
void spiFlashMemWrite(unsigned int chip_sel, uint32_t address, uint8_t* buffer) {
    int i = 0;
    
    spiFlashMemSetWriteEnable(chip_sel);
    spiFLashMemGlobalUnprotect(chip_sel);
    spiFlashMemSetWriteEnable(chip_sel);
    
    // chip-select
	enable_SSEL(chip_sel);
    
    spiTransfer(CmdPageProgram);
    spiTransfer((address & AdressHigh) >> 16);
    spiTransfer((address & AdressMiddle) >> 8);
    spiTransfer(address & AdressLow);
    
    for(i=0; i<BlockSize; i++) {
        spiTransfer(buffer[i]);
    }
    
    // chip-unselect
	disable_SSEL(chip_sel);
    
    spiFlashMemWaitReady(chip_sel);
}

/*
 * reads manufacturer id and chip
 */
uint32_t spiReadManufacturerId(unsigned int chip_sel) {
    int res = 0;
    
    // chip-select
	enable_SSEL(chip_sel);
    
    spiTransfer(CmdReadManufacturerId);
    res = (spiTransfer(DUMMY) << 16);
    res = (spiTransfer(DUMMY) << 8);
    res = spiTransfer(DUMMY);
    
    // chip-unselect
	disable_SSEL(chip_sel);
    
    return res;
}

/************************************************************ ab hier kann wohl geloescht werden *****************************************************************/

//uint8_t spi_mem_ReadByte(unsigned int chip_sel, unsigned int address) {
//	uint8_t ret = 0;
//	
//	spi_writeByte(chip_sel, READ_ARRAY);
//	
//	ret = spi_readByte(chip_sel);
//	
//	return ret;
//}

//void spi_mem_EraseChip(unsigned int chip_sel) {
//	uint8_t status_reg = 0;
//	uint16_t busy = 1;
//	
//	// write enable
//	spi_writeByte(chip_sel, WRITE_ENABLE);	// send command
//	
//	// read status register
//	spi_writeByte(chip_sel, READ_STATUS_REGISTER);	// send command
//	status_reg = spi_readByte(chip_sel);						// read byte 1
//	spi_readByte(chip_sel);													// ignore byte 2
//	
//	// set unprotect
//	status_reg |= GLOBAL_PROTECT;
//	status_reg &= ~NEW_SPRL_VALUE;
//	
//	// write status register
//	spi_writeByte(chip_sel, WRITE_STATUS_REGISTER_BYTE_1);	// send command
//	spi_writeByte(chip_sel, status_reg);										// value
//	
//	// chip erase
//	spi_writeByte(chip_sel, CHIP_ERASE);						// send command
//	
//	// check for ready
//	spi_writeByte(chip_sel, READ_STATUS_REGISTER);	// send command
//	do{
//		busy = spi_readByte(chip_sel);								// read byte 1
//		spi_readByte(chip_sel);												// ignore byte 2
//	}while((busy & STATUS_REG_BUSY) != 0);
//	
//	// read status register
//	spi_writeByte(chip_sel, READ_STATUS_REGISTER);	// send command
//	status_reg = spi_readByte(chip_sel);						// read byte 1
//	spi_readByte(chip_sel);													// ignore byte 2
//	
//	// set protect
//	status_reg &= ~GLOBAL_PROTECT;
//	
//	// write status register
//	spi_writeByte(chip_sel, WRITE_STATUS_REGISTER_BYTE_1);	// send command
//	spi_writeByte(chip_sel, status_reg);										// value
//	
//	// write enable
//	spi_writeByte(chip_sel, WRITE_DISABLE);	// send command
//}

//unsigned int spi_mem_ReadManufacturerID(unsigned int chip_sel) {
//	unsigned int ret = 0;
//	
//	spi_writeByte(chip_sel, READ_MANUFACTURER_ID);

//	ret = spi_readByte(chip_sel);				// manufaturer id
//	ret = ret & (spi_readByte(chip_sel) << 16);	// device id part 1
//	ret = ret & (spi_readByte(chip_sel) << 8);  // device id part 2
//	
//	return ret;
//}

//uint32_t spi_mem_ReadManufacturerID_Heitmann() {
//	uint32_t id = 0;
//	uint8_t factory_id = 0;
//	uint8_t dev_id1 = 0;
//	uint8_t dev_id2 = 0;
//	
//	// setup
//	RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI3, ENABLE);
//	
//	SPI3->CR1 = 0 | SPI_CR1_SPE | SPI_CR1_MSTR | SPI_CR1_CPOL | SPI_CR1_CPHA | (1<<8) | (1<<9);
//	SPI3->CR2 = 0;
//	
//	// code aus skript
//	GPIOB->BSRRH = (1<<9);
//	
//	SPI3->DR = 0x9f;
//	while( (SPI3->SR & (1<<0)) == 0 );
//	SPI3->DR;
//		
//	SPI3->DR = 0;
//	while( (SPI3->SR & (1<<0)) == 0 );
//	factory_id = (uint8_t)SPI3->DR;
//	
//	SPI3->DR = 0;
//	while( (SPI3->SR & (1<<0)) == 0 );
//	dev_id1 = (uint8_t)SPI3->DR;
//	
//	SPI3->DR = 0;
//	while( (SPI3->SR & (1<<0)) == 0 );
//	dev_id2 = (uint8_t)SPI3->DR;
//	
//	GPIOB->BSRRL = (1<<9);
//	
//	id = factory_id | (dev_id1<<8) | (dev_id2<<16);
//	
//	return id;
//}

