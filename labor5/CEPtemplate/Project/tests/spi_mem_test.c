#include <stdint.h>
#include "stdio.h"
#include "../spi_mem.h"
#include "../global.h"

void spi_mem_ReadManufacturerID_test(void) {
	unsigned int res = 0;	
	
	printf("spi_mem_ReadManufacturerID_test()\n");fflush(stdout);
	
	res = spiReadManufacturerId(SPI_MEM1);
	
	printf("id=%08X\n", res);fflush(stdout);
}

void spi_mem_ReadManufacturerID_Heitmann_test(void) {		
	printf("spi_mem_ReadManufacturerID_Heitmann()\n");fflush(stdout);
	
	printf("id=%08X\n", spi_mem_ReadManufacturerID_Heitmann());fflush(stdout);
}

void spi_mem_spiFlashMemWriteRead_test(void) {
	//void spiFlashMemWrite(unsigned int chip_sel, uint32_t address, uint8_t* buffer)
	//void spiFlashMemRead(unsigned int chip_sel, uint32_t address, uint8_t* buffer)
//	uint8_t data_in[] = {1 ,2 ,3 ,4 ,5};
//	unsigned int data_size = sizeof(data_in)/sizeof(data_in[0]);
//	uint8_t data_out[data_size];
//	uint32_t address = 0;
//	unsigned int i = 0;
//	
//	printf("spi_mem_spiFlashMemWriteRead_test()\n");fflush(stdout);
//	
//	spiFlashMemWrite(SPI_MEM1, address, data_in);
//	spiFlashMemRead(SPI_MEM1, address, data_out);
//	
//	for(i=0; i<data_size; i++) {
//		printf("%d", data_out[i]);fflush(stdout);
//	}	
//	
//	printf("\n");fflush(stdout);
}	
