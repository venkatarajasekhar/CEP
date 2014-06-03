#include <stm32f4xx.h>
#include <stm32f4xx_rcc.h>
#include <stm32f4xx_gpio.h>
#include <stm32f4xx_spi.h>
#include "global.h"
#include "gpio.h"

void gpio_setup(void) {
	GPIO_InitTypeDef gpio;
	
	//gpio.GPIO_Mode = GPIO_Mode_OUT;
	gpio.GPIO_OType = GPIO_OType_PP;
	gpio.GPIO_PuPd = GPIO_PuPd_UP;
	gpio.GPIO_Speed = GPIO_Speed_100MHz;

	/******************** gpiob pin9 ********************/
	
	// gpiob, clock enable
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);
	
	// GPIOB Pin 9 init
	gpio.GPIO_Pin = GPIO_Pin_9;
	GPIO_Init(GPIOB, &gpio);
	
	// pb9 -> output
	GPIOB->MODER = (GPIOB->MODER & ~(3 << (9 * 2))) | (GPIO_Mode_OUT << (9 * 2));
	
	// bsrrl -> high
	GPIOB->BSRRL = GPIO_Pin_9;
	
	/******************** gpioc pin10,11,12 ********************/
	
	// gpiob, clock enable
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOC, ENABLE);
	
	// GPIOC Pin 10,11,12 init
	gpio.GPIO_Pin = GPIO_Pin_10 | GPIO_Pin_11 | GPIO_Pin_12;
	GPIO_Init(GPIOC, &gpio);
	
	// pc10 -> alternate function
	//GPIOC->MODER = (GPIOC->MODER & ~(3 << (10 * 2))) | (GPIO_Mode_AF << (10 * 2)) | (GPIOC->MODER & ~(3 << (11 * 2))) | (GPIO_Mode_AF << (11 * 2)) | (GPIOC->MODER & ~(3 << (12 * 2))) | (GPIO_Mode_AF << (12 * 2));
	//GPIOB->MODER = (GPIOC->MODER & ~(3 << (11 * 2))) | (GPIO_Mode_AF << (11 * 2));
	//GPIOB->MODER = (GPIOC->MODER & ~(3 << (12 * 2))) | (GPIO_Mode_AF << (12 * 2));
	GPIOC->MODER   |= (GPIO_Mode_AF << (2*10))    | (GPIO_Mode_AF << (2*11))    | (GPIO_Mode_AF << (2*12));
	GPIOC->AFR[1]  |= (GPIO_AF_SPI3 << (4*2))     | (GPIO_AF_SPI3 << (4*3))     | (GPIO_AF_SPI3 << (4*4));
	
	// bsrrl -> low
	//GPIOC->BSRRL = GPIO_Pin_10 | GPIO_Pin_11 | GPIO_Pin_12;	
	
	/******************** gpiog pin6 ********************/
	
	// gpiob, clock enable
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOG, ENABLE);
	
	// GPIOG Pin 6 init
	gpio.GPIO_Pin = GPIO_Pin_6;
	GPIO_Init(GPIOG, &gpio);
	
	// pg6 -> output
	GPIOG->MODER = (GPIOG->MODER & ~(3 << (6 * 2))) | (GPIO_Mode_OUT << (6 * 2));
	
	// bsrrl -> high
	GPIOG->BSRRL = GPIO_Pin_6;

	
//	gpio.GPIO_Mode = GPIO_Mode_OUT;
//    gpio.GPIO_OType = GPIO_OType_PP;
//    gpio.GPIO_PuPd = GPIO_PuPd_UP;
//    gpio.GPIO_Speed = GPIO_Speed_50MHz;

//    gpio.GPIO_Pin = GPIO_Pin_6 ;
//    GPIO_Init(GPIOG, &gpio);
	
	
	/******************** sonstiges setup ********************/		
//	GPIOC->MODER   |= (GPIO_Mode_AF << (2*10))    | (GPIO_Mode_AF << (2*11))    | (GPIO_Mode_AF << (2*12));
//	GPIOC->OSPEEDR |= (GPIO_High_Speed << (2*10)) | (GPIO_High_Speed << (2*11)) | (GPIO_High_Speed << (2*12));
//	GPIOC->AFR[1]  |= (GPIO_AF_SPI3 << (4*2))     | (GPIO_AF_SPI3 << (4*3))     | (GPIO_AF_SPI3 << (4*4));
}
