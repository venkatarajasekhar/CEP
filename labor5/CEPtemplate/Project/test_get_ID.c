#include "test_get_ID.h"
#include <stm32f4xx.h>
#include <stm32f4xx_rcc.h>
#include "CE_Lib.h"
#include "global.h"
#include "spi_mem.h"

	
void get_ID(void){
	unsigned int prnt;	
	test_spi_mem_ReadManufacID();
	
	prnt = spi_mem_ReadManufacturerID(SPI_MEM1);
	printf( "id %d\n", prnt );fflush(stdout);
		
}
