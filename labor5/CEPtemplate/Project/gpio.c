#include <stm32f4xx.h>
#include <stm32f4xx_rcc.h>
#include <stm32f4xx_gpio.h>
#include <stm32f4xx_spi.h>
#include "global.h"
#include "gpio.h"

void gpio_setup(void) {
	GPIO_InitTypeDef gpio;
	GPIO_InitTypeDef GPIO_InitStruct;
	SPI_InitTypeDef SPI_InitStruct;
	
	gpio.GPIO_Mode = GPIO_Mode_OUT;
	gpio.GPIO_OType = GPIO_OType_PP;
	gpio.GPIO_PuPd = GPIO_PuPd_UP;
	gpio.GPIO_Speed = GPIO_Speed_50MHz;

	//GPIOG & GPIOB, pin9 und pin6 intitialisieren
	gpio.GPIO_Pin = GPIO_Pin_9;
	GPIO_Init(GPIOB, &gpio);

	gpio.GPIO_Pin = GPIO_Pin_6;
	GPIO_Init(GPIOG, &gpio);

	
	// pg6 -> alternate function
	GPIOG->MODER = (GPIOG->MODER & ~(3 << (7 * 2))) | (GPIO_Mode_AF << (7 * 2));
	
	// speed: 50mhz
	GPIOG->OSPEEDR = (GPIOG->OSPEEDR & ~(3 << (7 * 2))) | (GPIO_Speed_50MHz << (7 * 2));

	// gpiog, clock enable
	RCC_APB1PeriphClockCmd(RCC_AHB1Periph_GPIOG, ENABLE);
	
	
	// pb9 -> alternate function
	GPIOB->MODER = (GPIOB->MODER & ~(3 << (7 * 2))) | (GPIO_Mode_AF << (7 * 2));
	
	// speed: 50mhz
	GPIOB->OSPEEDR = (GPIOB->OSPEEDR & ~(3 << (7 * 2))) | (GPIO_Speed_50MHz << (7 * 2));
	
	// gpiob, clock enable
	RCC_APB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);
	
//	GPIO_PinSource10
//	GPIO_AF_SPI3
	
	// configure pins used by SPI3, PC10 = SCK / PC11 = MISO / PC12 = MOSI
//	GPIO_InitStruct.GPIO_Pin = FLASH_SCK | FLASH_MISO | FLASH_MOSI;

	// connect SPI3 pins to SPI alternate function
//	GPIO_PinAFConfig(FLASH_PORT_C, GPIO_PinSource10, GPIO_AF_SPI3);
//	GPIO_PinAFConfig(FLASH_PORT_C, GPIO_PinSource11, GPIO_AF_SPI3);
//	GPIO_PinAFConfig(FLASH_PORT_C, GPIO_PinSource12, GPIO_AF_SPI3);
	
}
