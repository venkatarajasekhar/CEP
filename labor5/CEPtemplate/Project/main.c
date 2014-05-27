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
	
//	SPI_Cmd(SPI3, ENABLE);
//	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);
//	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOG, ENABLE);
//	 
//	// LEDs
//    gpio.GPIO_Mode = GPIO_Mode_OUT;
//    gpio.GPIO_OType = GPIO_OType_PP;
//    gpio.GPIO_PuPd = GPIO_PuPd_UP;
//    gpio.GPIO_Speed = GPIO_Speed_50MHz;

//    gpio.GPIO_Pin = GPIO_Pin_9;
//    GPIO_Init(GPIOB, &gpio);

//    gpio.GPIO_Pin = GPIO_Pin_6;
//    GPIO_Init(GPIOG, &gpio);
//	GPIOG->BSRRH = (1<<6);
//	GPIOG->BSRRL = (1<<6);
//	
//	GPIOG->BSRRH = (1<<6);
//	GPIOG->BSRRL = (1<<6);
//	GPIOG->BSRRH = (1<<6);
//	GPIOG->BSRRL = (1<<6);
	
	//labor5();
	
	//spi_mem_ReadManufacturerID_test();
	spi_mem_ReadManufacturerID_Heitmann_test();
	
	while(1){}
		
	return EXIT_SUCCESS;
}




