#include <stdio.h>
#include <stdlib.h>
#include "labor5.h"
#include "CE_Lib.h"
#include "tests/spi_mem_test.h"
//#include <stm32f4xx_rcc.h>
//#include <stm32f4xx_gpio.h>
//#include <stm32f4xx_spi.h>

int main(void) {
//	//SPI enablen und es ist nicht auf AHB
//	GPIO_InitTypeDef gpio;
	
	initCEP_Board();
	//labor5();
	
	//spi_mem_ReadManufacturerID_test();
	spi_mem_ReadManufacturerID_Heitmann_test();
	
	while(1){}
		
	return EXIT_SUCCESS;
}




