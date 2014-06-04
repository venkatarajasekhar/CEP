#include <stm32f4xx.h>
#include <stm32f4xx_rcc.h>
#include <stdint.h>
#include "spi.h"
#include "spi_mem.h"
#include "global.h"

// spi-commands
#define DUMMY 0
#define CmdReadStatusRegister 0x05
#define CmdWriteStatusRegister_Byte_1 0x01
#define CmdWriteEnable 0x06
#define CmdReadArray 0x0B

#define CmdBlockErase_64K 0xd8
#define CmdBlockErase_32K 0x52
#define CmdBlockErase_4K 0x20

#define CmdPageProgram 0x02
#define CmdReadManufacturerId 0x9f

// status register
#define BlockSize 256
#define StatusRegReady 0x01
//#define AdressHigh 0x00ff0000
//#define AdressMiddle 0x0000ff00
//#define AdressLow 0x000000ff

// mem-block size
#define BLOCK_4KB (4 * 1024) //4069
#define BLOCK_32KB (32 * 1024) //32768
#define BLOCK_64KB (64 * 1024) //65536

// how many 4KB-blocks of each size are in a single 64K-block
#define BlockCount_64 (BLOCK_64KB/BLOCK_4KB)
#define BlockCount_32 (BLOCK_32KB/BLOCK_4KB)
#define BlockCount_4  (BLOCK_4KB/BLOCK_4KB)

/***** util-functions *****/
static void enable_SSEL(unsigned int chip_sel) {
    if(chip_sel == SPI_MEM_WORK) {
		SPI_MEM_WORK_H;
		//GPIOG->BSRRH = (1<<6);
	} else {
		SPI_MEM_ORIGINAL_H;
		//GPIOB->BSRRH = (1<<9);
	}
}

static void disable_SSEL(unsigned int chip_sel) {
    if(chip_sel == SPI_MEM_WORK) {
		SPI_MEM_WORK_L;
		//GPIOG->BSRRL = (1<<6);
	} else {
		SPI_MEM_ORIGINAL_L;
		//GPIOB->BSRRL = (1<<9);
	}
}

/*
 * unprotects all sectors
 */
static void spiFLashMemGlobalUnprotect(unsigned int chip_sel) {
    // chip-select
	enable_SSEL(chip_sel);

    spiTransfer(CmdWriteStatusRegister_Byte_1);
    //spiTransfer(GlobalUnprotect); // global unprotect        #define GlobalUnprotect 0x0  ??
    spiTransfer(DUMMY);
    
    // chip-unselect
	disable_SSEL(chip_sel);
}   

/*
 * unprotects all sectors
 */
//static uint16_t spiFlashMemReadStatusRegister(unsigned int chip_sel) {
//    uint8_t val1 = 0;
//    uint8_t val2 = 0;
//    
//    // chip-select
//	enable_SSEL(chip_sel);
//     
//    spiTransfer(CmdReadStatusRegister);
//    val1 = spiTransfer(DUMMY);
//    val2 = spiTransfer(DUMMY);
//    
//    // chip-unselect
//	disable_SSEL(chip_sel);
//    
//    return (val1 << 8) | val2; 
//}

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
unsigned int spiFlashMemRead(unsigned int chip_sel, uint32_t address, uint8_t* buffer, int bufferSize) {
    int i = 0;
    
    if(address + bufferSize > SPI_MEM_SIZE) {
        return 0;
    } else {
        // chip-select
        enable_SSEL(chip_sel);
    
        spiTransfer(CmdReadArray);
        spiTransfer(address >> 16);
        spiTransfer(address >> 8);
        spiTransfer(address);
        spiTransfer(DUMMY);
    
        for(i=0; i<bufferSize; i++) {
            buffer[i] = spiTransfer(DUMMY);
        }
        // chip-unselect
        disable_SSEL(chip_sel);
    
        return 1;
    }
}


/*
 * erases 32k of memory starting at given address
 */
unsigned int spiFlashMemErase(unsigned int chip_sel, uint32_t address, uint32_t numberOfBytes) {
    uint32_t numberOfBlocks = ((address + numberOfBytes) / BLOCK_4KB) - (address / BLOCK_4KB) + 1;
    
    if((address+ numberOfBytes) > SPI_MEM_SIZE){
        return 0;
    }else{
        
        while(numberOfBlocks) {
            if(numberOfBlocks >= BlockCount_64){
                spiFlashMemEraseBlock(chip_sel, address, CmdBlockErase_64K); 
                numberOfBlocks -= BlockCount_64;
                address += BLOCK_64KB;
            }
            else if(numberOfBlocks >= BlockCount_32){
                spiFlashMemEraseBlock(chip_sel, address, CmdBlockErase_32K);
                numberOfBlocks -= BlockCount_32;
                address += BLOCK_32KB;
            }
            else if(numberOfBlocks >= BlockCount_4){
                spiFlashMemEraseBlock(chip_sel, address, CmdBlockErase_4K);
                numberOfBlocks -= BlockCount_4;
                address += BLOCK_4KB;
            }
        } 
        return 1;
    }
}


 void spiFlashMemEraseBlock(unsigned int chip_sel, uint32_t address,  uint8_t erase_cmd) {
    
    spiFlashMemSetWriteEnable(chip_sel);
    spiFLashMemGlobalUnprotect(chip_sel);
    spiFlashMemSetWriteEnable(chip_sel);
     
    // chip-select
	enable_SSEL(chip_sel);
    
    spiTransfer(erase_cmd); //block-erase-type-kommand aus der tabelle 
    spiTransfer(address >> 16);
    spiTransfer(address >> 8);
    spiTransfer(address);
    
    // chip-unselect
	disable_SSEL(chip_sel);
    
    spiFlashMemWaitReady(chip_sel);
}

/*
 * writes a block of 256 bytes to given address
 */
void spiFlashMemWrite(unsigned int chip_sel, uint32_t address, uint8_t* buffer, int bufferSize) {
    int i = 0;
    
    spiFlashMemSetWriteEnable(chip_sel);
    spiFLashMemGlobalUnprotect(chip_sel);
    spiFlashMemSetWriteEnable(chip_sel);
    
    // chip-select
	enable_SSEL(chip_sel);
    
    spiTransfer(CmdPageProgram);
    spiTransfer(address >> 16);
    spiTransfer(address >> 8);
    spiTransfer(address);
    
    for(i=0; i<bufferSize; i++) {
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
    res |= (spiTransfer(DUMMY) << 8);
    res |= spiTransfer(DUMMY);
    
    // chip-unselect
	disable_SSEL(chip_sel);
    
    return res;
}

uint32_t spi_mem_ReadManufacturerID_Heitmann() {
	uint32_t id = 0;
	uint8_t factory_id = 0;
	uint8_t dev_id1 = 0;
	uint8_t dev_id2 = 0;
	uint8_t dummy = 0; 
	
	// setup
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI3, ENABLE);
	
	SPI3->CR1 = 0 | SPI_CR1_SPE | SPI_CR1_MSTR | SPI_CR1_CPOL | SPI_CR1_CPHA | (1<<8) | (1<<9);
	SPI3->CR2 = 0;
	
	// code aus skript
	GPIOB->BSRRH = (1<<9);
	
	SPI3->DR = 0x9f;
	while( (SPI3->SR & (1<<0)) == 0 );
	factory_id = (uint8_t)SPI3->DR;
		
	SPI3->DR = 0;
	while( (SPI3->SR & (1<<0)) == 0 );
	dev_id1 = (uint8_t)SPI3->DR;
	
	SPI3->DR = 0;
	while( (SPI3->SR & (1<<0)) == 0 );
	dev_id2 = (uint8_t)SPI3->DR;
	
	SPI3->DR = 0;
	while( (SPI3->SR & (1<<0)) == 0 );
	dummy = SPI3->DR;
	
	GPIOB->BSRRL = (1<<9);
	
	id = factory_id | (dev_id1<<8) | (dev_id2<<16);
	
	return id;
}

