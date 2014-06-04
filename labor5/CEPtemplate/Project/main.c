#include <stdio.h>
#include <stdlib.h>
#include "labor5.h"
#include "CE_Lib.h"
#include "gpio.h"
#include "spi.h"
#include "tests/spi_mem_test.h"

int main(void) {
	initCEP_Board();
	
    gpio_setup();
	spi_setup();

	//labor5();
	//spi_mem_ReadManufacturerID_test();
	//spi_mem_spiFlashMemWriteRead_test();
    
    spi_mem_spiFlashMemErase_test();
	
	while(1){}
		
	return EXIT_SUCCESS;
}




