#include <stm32f4xx.h>
#include <stm32f4xx_rcc.h>
#include <stdint.h>
#include "spi.h"
#include "spi_mem.h"
#include "global.h"
#include "CE_Lib.h"

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
#define StatusRegReady 0x01

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
    //spiTransfer(GlobalUnprotect); // uses CmdWriteStatusRegister_Byte_1 with 0 as value
    spiTransfer(DUMMY);
    
    // chip-unselect
	disable_SSEL(chip_sel);
}   

/*
 * reads status register
 */
//static uint16_t spiFlashMemReadStatusRegister(unsigned int chip_sel) {
//    uint8_t val1 = 0;
//    uint8_t val2 = 0;
//    
//    // chip-select
//		enable_SSEL(chip_sel);
//     
//    spiTransfer(CmdReadStatusRegister);
//    val1 = spiTransfer(DUMMY);
//    val2 = spiTransfer(DUMMY);
//    
//    // chip-unselect
//		disable_SSEL(chip_sel);
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

/*
 * erases a block of certain size at given address
 */
static void spiFlashMemEraseBlock(unsigned int chip_sel, uint32_t address,  uint8_t erase_cmd) {
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
 * writes a page to a given address
 */
static void spiFlashMemWritePage(unsigned int chip_sel, uint32_t address, uint8_t* buffer, int numBytes) {
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
    
    for(i=0; i<numBytes; i++) {
        spiTransfer(buffer[i]);
    }
		
		// chip-unselect
		disable_SSEL(chip_sel);
    
    spiFlashMemWaitReady(chip_sel);
}

/***** memory-functions *****/

/*
 * reads at given address
 */
int spiFlashMemRead(unsigned int chip_sel, uint32_t address, uint8_t* buffer, int numBytes) {
    int i = 0;
    
    if(address + numBytes > SPI_MEM_SIZE) {
        return -1;
    } else {
        // chip-select
        enable_SSEL(chip_sel);
    
        spiTransfer(CmdReadArray);
        spiTransfer(address >> 16);
        spiTransfer(address >> 8);
        spiTransfer(address);
        spiTransfer(DUMMY);
    
        for(i=0; i<numBytes; i++) {
            buffer[i] = spiTransfer(DUMMY);
        }
				
        // chip-unselect
        disable_SSEL(chip_sel);
    
        return 0;
    }
}

/*
 * erases memory starting at given address
 */
int spiFlashMemErase(unsigned int chip_sel, uint32_t address, uint32_t numBytes) {
    uint32_t numberOfBlocks = ((address + numBytes) / BLOCK_4KB) - (address / BLOCK_4KB) + 1; // how many 4k blocks to delete
    
    if((address + numBytes) > SPI_MEM_SIZE){    
        return -1;
		
    }else{ 
	
	//wenn noch nicht an der grenze 
	if(address % BLOCK_64KB != 0){
							
		if(address % BLOCK_32KB != 0){
			uint32_t rest = BLOCK_64KB - (address % BLOCK_64KB);
			if(rest > BLOCK_32KB){
			spiFlashMemEraseBlock(chip_sel, address, CmdBlockErase_32K); 
			numberOfBlocks -= BlockCount_32;
			address += BLOCK_32KB;
			rest = rest - BLOCK_32KB;
		}
			if(address % BLOCK_4KB != 0){
				rest = BLOCK_64KB - (address % BLOCK_64KB);						
				if(rest < BLOCK_4KB){
				address = address - (BLOCK_4KB % rest);
				rest = rest + (BLOCK_4KB % rest);
			}else{
				address = address - (BLOCK_4KB -(rest % BLOCK_4KB));
				rest = rest + (BLOCK_4KB -(rest % BLOCK_4KB));
			}
				uint32_t test = rest % BLOCK_4KB;
												
				while(rest != 0){
					spiFlashMemEraseBlock(chip_sel, address, CmdBlockErase_4K);
					numberOfBlocks -= BlockCount_4;
					address += BLOCK_4KB;
					rest = rest - BLOCK_4KB;
				}
			}
		}else {
		spiFlashMemEraseBlock(chip_sel, address, CmdBlockErase_32K); 
		numberOfBlocks -= BlockCount_32;
		address += BLOCK_32KB;
		}
	}
		uint32_t ausgabe = 0;
        while(numberOfBlocks) {
						
            if(numberOfBlocks >= BlockCount_64){
				ausgabe += 1;
                printf("erase %d\n",ausgabe);fflush(stdout);
                spiFlashMemEraseBlock(chip_sel, address, CmdBlockErase_64K); 
                numberOfBlocks -= BlockCount_64;
                address += BLOCK_64KB;
            }
            else if(numberOfBlocks >= BlockCount_32){
                printf("erase 32\n");fflush(stdout);
                spiFlashMemEraseBlock(chip_sel, address, CmdBlockErase_32K);
                numberOfBlocks -= BlockCount_32;
                address += BLOCK_32KB;
            }
            else if(numberOfBlocks >= BlockCount_4){
                printf("erase 4\n");fflush(stdout);
                spiFlashMemEraseBlock(chip_sel, address, CmdBlockErase_4K);
                numberOfBlocks -= BlockCount_4;
                address += BLOCK_4KB;
            }
        } 
        printf("erase \n");fflush(stdout);
        return 0;
    }
}

/*
 * writes bytes to given address
 */
int spiFlashMemWrite(unsigned int chip_sel, uint32_t address, uint8_t* buffer, int numBytes) { 	
		unsigned int mem_idx = 0;   //buffer-index of written bytes
		unsigned int mem_left = 0;
	
		if((address + numBytes) > SPI_MEM_SIZE){     //avoid overlap
            return -1;
		} else {

			while(numBytes) {       //as long as there are bytes left to write
             
                mem_left = PAGE_SIZE - (address % PAGE_SIZE);    //how many bytes of the current page are left
                
				if(mem_left >= numBytes) {      // left bytes fit into current page  
					spiFlashMemWritePage(chip_sel, address, &buffer[mem_idx], numBytes);
					address += numBytes;
					mem_idx   += numBytes;
					numBytes 	= 0;        //done!
				} else {
					spiFlashMemWritePage(chip_sel, address, &buffer[mem_idx], mem_left);
					address += mem_left;
					mem_idx   += mem_left;
					numBytes 	-= mem_left;
				}
			}
			
			return 0;
		}	
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

/*
 * compares work-flash with original-flash
 */
int spiFlashMemChipCompare(void) {
	uint8_t buffer_work[BLOCK_32KB];
	uint8_t buffer_original[BLOCK_32KB];
	unsigned int address = 0;
	unsigned int i = 0;
	
	for(address=0; address<SPI_MEM_SIZE; address+=BLOCK_32KB) {
		spiFlashMemRead(SPI_MEM_ORIGINAL, address, buffer_original, BLOCK_32KB);
		spiFlashMemRead(SPI_MEM_WORK, address, buffer_work, BLOCK_32KB);
	
		for(i=0; i<BLOCK_32KB; i++) {
			if(buffer_original[i] != buffer_work[i]) {
				return -1;
			}	
		}
	}	
	
	return 0;
}

/*
 * compares work-flash with original-flash
 */
int spiFlashMemCompare(unsigned int address_work, unsigned int address_original, unsigned int bytes) {
    uint8_t workBuffer[PAGE_SIZE];
    uint8_t originalBuffer[PAGE_SIZE];
    unsigned int bytesToCompare = 0;
    unsigned int i = 0;    
    
    if(((address_work + bytes ) > SPI_MEM_SIZE) || ((address_original + bytes ) > SPI_MEM_SIZE)) {
        return -1;
    } else {

        while(bytes) {
            if(bytes > PAGE_SIZE) {
                spiFlashMemRead(SPI_MEM_WORK, address_work, workBuffer, PAGE_SIZE);
                spiFlashMemRead(SPI_MEM_ORIGINAL, address_original, originalBuffer, PAGE_SIZE);
                bytesToCompare = PAGE_SIZE;
                bytes -= PAGE_SIZE;
            } else {
                spiFlashMemRead(SPI_MEM_WORK, address_work, workBuffer, bytes);
                spiFlashMemRead(SPI_MEM_ORIGINAL, address_original, originalBuffer, bytes);
                bytesToCompare = bytes;
                bytes = 0;
            }

            for(i = 0; i<bytesToCompare; i++) {
                if(workBuffer[i] != originalBuffer[i]) {
                    return -1;
                }
            }
        } 
    
    }    

    return 0;
}

/*
 * copies source-flash to destination-flash
 */
void spiFlashMemChipCopy(unsigned int chip_src, unsigned int chip_dst) {
	uint8_t buffer[BLOCK_32KB];
	int address = 0;
	
	for(address=0; address<SPI_MEM_SIZE; address+=BLOCK_32KB) {
		spiFlashMemRead(chip_src, address, buffer, BLOCK_32KB);
		spiFlashMemWrite(chip_dst, address, buffer, BLOCK_32KB);
	}
}

/*
 * copies a memory area from source-flash to destination-flash
 */
int spiFlashMemCopy(unsigned int chip_src, unsigned int chip_dst, unsigned int address_src, unsigned int address_dst, unsigned int bytes) {
    uint8_t buffer[PAGE_SIZE];
    
     if(((address_src + bytes ) > SPI_MEM_SIZE) || ((address_dst + bytes ) > SPI_MEM_SIZE)) {
        return -1;
     } else {
     
          while(bytes) {
            if(bytes > PAGE_SIZE) {
                spiFlashMemRead(chip_src, address_src, buffer, PAGE_SIZE);
                spiFlashMemWrite(chip_dst, address_dst, buffer, PAGE_SIZE);
                bytes -= PAGE_SIZE;
            } else {
                spiFlashMemRead(chip_src, address_src, buffer, bytes);
                spiFlashMemWrite(chip_dst, address_dst, buffer, bytes);
                bytes = 0;
            }
          }
          
     }         
    
    return 0;
}    
