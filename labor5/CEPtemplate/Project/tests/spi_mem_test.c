#include <stdint.h>
#include "stdio.h"
#include "../spi_mem.h"
#include "../global.h"
#define BUFFER_SIZE BLOCK_4KB

void spi_mem_ReadManufacturerID_test(void) {
	unsigned int res = 0;	
	
	printf("\nspi_mem_ReadManufacturerID_test()\n");fflush(stdout);
	
	res = spiReadManufacturerId(SPI_MEM_WORK);
	
	printf("id=%08X\n", res);fflush(stdout);
}

void spi_mem_spiFlashMemWriteRead_test(void) {
		
	const unsigned int DATA_SIZE = 5;
	uint8_t data_in[DATA_SIZE];
	uint8_t data_out[DATA_SIZE];
	uint32_t address = 0;
	unsigned int i = 0;
	
    for(i=0; i<DATA_SIZE; i++) {
		data_in[i] = i + 1;
	}
    
	printf("\nspi_mem_spiFlashMemWriteRead_test()\n");fflush(stdout);
	
    spiFlashMemErase(SPI_MEM_WORK, address, DATA_SIZE);
	spiFlashMemWrite(SPI_MEM_WORK, address, data_in, DATA_SIZE);
	spiFlashMemRead(SPI_MEM_WORK, address, data_out, DATA_SIZE);
	
	for(i=0; i<DATA_SIZE; i++) {
		printf("%d", data_out[i]);fflush(stdout);
	}	
	
	printf("\n");fflush(stdout);
}	

void spi_mem_spiFlashMemErase_test(void) {
    
    unsigned int DATA_SIZE = 11;
	//uint8_t data_out[DATA_SIZE];
	uint8_t data_in[DATA_SIZE];
	uint32_t address = 0;
	unsigned int i = 0;
	
//	printf("in: ");fflush(stdout);
//    for(i=0; i<DATA_SIZE; i++) {
//		data_out[i] = i;
//		printf(" %X", data_out[i]);fflush(stdout);
//	}
	
	printf("\n");fflush(stdout);
    
//    spiFlashMemErase(SPI_MEM_WORK, address, DATA_SIZE);
//	spiFlashMemWrite(SPI_MEM_WORK, address, data_out, DATA_SIZE);
//    
//    spiFlashMemErase(SPI_MEM_WORK, address, DATA_SIZE);
//	spiFlashMemRead(SPI_MEM_WORK, address, data_in, DATA_SIZE);

   	  //spiFlashMemRead(SPI_MEM_ORIGINAL, address, data_out, DATA_SIZE);
	  //spiFlashMemErase(SPI_MEM_WORK, address, DATA_SIZE);
      //spiFlashMemWrite(SPI_MEM_WORK, address, data_out, DATA_SIZE);
	  
//	spiFlashMemRead(SPI_MEM_ORIGINAL, address, data_in, DATA_SIZE);
//	  
//	
//	printf("out: ");fflush(stdout);
//	for(i=0; i<DATA_SIZE; i++) {
//		printf(" %X", data_in[i]);fflush(stdout);
//	}
	
	spiFlashMemRead(SPI_MEM_ORIGINAL, address, data_in, DATA_SIZE);
                        
    for(i = 0; i < DATA_SIZE; i++) {
      printf("%X ", data_in[i]);
    }
	printf("\n");
	
	
	
	while(DATA_SIZE) {
		if(DATA_SIZE >  BUFFER_SIZE) {
        spiFlashMemRead(SPI_MEM_ORIGINAL, address, data_in, BUFFER_SIZE);
                        
        for(i = 0; i < BUFFER_SIZE; i++) {
           printf("%X ", data_in[i]);fflush(stdout);
                        }
                        
                        DATA_SIZE -= BUFFER_SIZE;
                        address += BUFFER_SIZE;
                    } else {
                        spiFlashMemRead(SPI_MEM_ORIGINAL, address, data_in, DATA_SIZE);
                        
						for(i = 0; i < DATA_SIZE; i++) {
							printf("%X ", data_in[i]);
						}
                        
                        DATA_SIZE = 0;
                    }
                } 
}

void spi_mem_spiFlashMemWrite_test(void) {
    int i = 0;
    uint32_t address = 0;
    const unsigned int DATA_SIZE = 4194304;
    uint8_t data_in[DATA_SIZE];
    
    for(i=0; i<DATA_SIZE; i++) {
		data_in[i] = 2;
		printf(" %X", data_in[i]);fflush(stdout);
	}	
	
    spiFlashMemErase(SPI_MEM_WORK, address, DATA_SIZE);
	spiFlashMemWrite(SPI_MEM_WORK, address, data_in, DATA_SIZE);

}

