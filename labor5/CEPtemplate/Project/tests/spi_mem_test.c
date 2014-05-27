#include <stdint.h>
#include "stdio.h"
#include "../spi_mem.h"
#include "../global.h"

void spi_mem_ReadManufacturerID_test(void) {
	unsigned int res = 0;	
		
	res = spi_mem_ReadManufacturerID(SPI_MEM1);
	printf("test2");fflush(stdout);
	printf("id %d\n", res);fflush(stdout);
}

void spi_mem_ReadManufacturerID_Heitmann_test(void) {		
	printf("spi_mem_ReadManufacturerID_Heitmann()\n");fflush(stdout);
	
	printf("id=%08X\n", spi_mem_ReadManufacturerID_Heitmann());
}