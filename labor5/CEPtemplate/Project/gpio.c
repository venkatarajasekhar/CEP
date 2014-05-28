#include <stm32f4xx.h>
#include <stm32f4xx_rcc.h>
#include <stm32f4xx_gpio.h>
#include <stm32f4xx_spi.h>
#include "global.h"
#include "gpio.h"

void gpio_setup(void) {
    
    uint32_t temp = 0x00;
    uint32_t temp_2 = 0x00;
    
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
	
    
    //temp = GPIOG->AFR[1];
    //GPIOG->AFR[1] &= ~(( 0xf << GPIO_PinSource10 ) | ( 0xf << GPIO_PinSource11) |( 0xf << GPIO_PinSource12));
  
    temp = GPIOG->AFR[1];                   //absichern
    GPIOG->AFR[1] &= ~(0xfff << 8);         //PC10, P11 & P12 loeschen
    GPIOG->AFR[1] |= (0x666 << 8);          //PC10, P11 & P12 auf 6 setzen
    
     & ~0x000fff00
     | 0x00066600
    
    GPIOG->AFR[1] |= (0 | (0x  << 8));
    
    GPIOG->AFR[1] &= ~((uint32_t)0xFFF << ((uint32_t)((uint32_t) GPIO_PinSource10 & (uint32_t)0x07) * 4) |
    ((uint32_t)((uint32_t) GPIO_PinSource11 & (uint32_t)0x07) * 4) | ((uint32_t)((uint32_t) GPIO_PinSource12 & (uint32_t)0x07) * 4));
    
    
    /*PORTB |= 0xF0;   // Kurzschreibweise, entspricht PORTB = PORTB | 0xF0; bitweises ODER
 
/* PORTB &= 0xF0;   // entspricht PORTB = PORTB & 0xF0; bitweises UND
                 // Bits 0-3 (das "niederwertige" Nibble) werden geloescht 
 
/* übersichtlicher mittels Bit-Definitionen
#define MEINBIT0 0
#define MEINBIT1 1  
#define MEINBIT2 2  
 
PORTB &= ~((1 << MEINBIT0) | (1 << MEINBIT2)); // löscht Bit 0 und 2 in PORTB
*/
    
//	GPIO_PinSource10
//	GPIO_AF_SPI3
	
	// configure pins used by SPI3, PC10 = SCK / PC11 = MISO / PC12 = MOSI
//	GPIO_InitStruct.GPIO_Pin = FLASH_SCK | FLASH_MISO | FLASH_MOSI;

	// connect SPI3 pins to SPI alternate function
//	GPIO_PinAFConfig(FLASH_PORT_C, GPIO_PinSource10, GPIO_AF_SPI3);
//	GPIO_PinAFConfig(FLASH_PORT_C, GPIO_PinSource11, GPIO_AF_SPI3);
//	GPIO_PinAFConfig(FLASH_PORT_C, GPIO_PinSource12, GPIO_AF_SPI3);


/*
  temp = ((uint32_t)(GPIO_AF) << ((uint32_t)((uint32_t)GPIO_PinSource & (uint32_t)0x07) * 4)) ;
  GPIOx->AFR[GPIO_PinSource >> 0x03] &= ~((uint32_t)0xF << ((uint32_t)((uint32_t)GPIO_PinSource & (uint32_t)0x07) * 4)) ;
  temp_2 = GPIOx->AFR[GPIO_PinSource >> 0x03] | temp;
  GPIOx->AFR[GPIO_PinSource >> 0x03] = temp_2;
*/
	
}
