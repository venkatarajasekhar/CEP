#include <stdio.h>
#include <stdlib.h>
#include "labor5.h"
#include "CE_Lib.h"
#include "gpio.h"
#include "spi.h"
#include "tests/spi_mem_test.h"

int main(void) {
	initCEP_Board();
	spi_setup();
	gpio_setup();

	//labor5();
	
	spi_mem_ReadManufacturerID_test();
	//spi_mem_ReadManufacturerID_Heitmann_test();
	
	while(1){}
		
	return EXIT_SUCCESS;
}




