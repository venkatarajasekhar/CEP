#include "SPI.h"
#include <stdio.h>
#include <stm32f4xx.h>
#include <stm32f4xx_rcc.h>
#include <stm32f4xx_gpio.h>
#include <stm32f4xx_spi.h>

#define PAGE_SIZE 256
#define DUMMY 0
#define GLOBAL_UNPROTECT 0
#define OC_WRITE_ENABLE 0x06
#define OC_WRITE_STATUS_BYTE1 0x01
#define OC_READ_IDS 0x9F
#define OC_READ_BYTE_MEDIUM 0x0B
#define OC_READ_STATUS 0x05
#define OC_WRITE 0x02
#define ERASE_LENGTH_SMALL 4096
#define ERASE_LENGTH_MEDIUM 32768
#define ERASE_LENGTH_LARGE 65536

static inline uint8_t spiExchangeByte(uint8_t byte);
void  	spiEraseBlock(uint32_t address, enum ERASE_BLOCK_SIZE size,enum SLAVE slave);
void 	spiWritePage(uint32_t address, uint32_t bytes, uint8_t *buffer,enum SLAVE slave);
void 	spiWriteEnable(enum SLAVE slave);
void 	spiGlobalUnprotect(enum SLAVE slave);
void 	spiWaitTillReady(enum SLAVE slave);

void spiInit(void)
{
	RCC->APB1ENR |= RCC_APB1ENR_SPI3EN;
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN | RCC_AHB1ENR_GPIOGEN | RCC_AHB1ENR_GPIOCEN;
	
	GPIOB->MODER |= (GPIO_Mode_OUT << (2*9));
	GPIOG->MODER |= (GPIO_Mode_OUT << (2*6));
	GPIOG->BSRRL = GPIO_Pin_6;
	GPIOB->BSRRL = GPIO_Pin_9;
		
	GPIOC->MODER   |= (GPIO_Mode_AF << (2*10))    | (GPIO_Mode_AF << (2*11))    | (GPIO_Mode_AF << (2*12));
	GPIOC->OSPEEDR |= (GPIO_High_Speed << (2*10)) | (GPIO_High_Speed << (2*11)) | (GPIO_High_Speed << (2*12));
	GPIOC->AFR[1]  |= (GPIO_AF_SPI3 << (4*2))     | (GPIO_AF_SPI3 << (4*3))     | (GPIO_AF_SPI3 << (4*4));
	
	SPI3->CR1 = SPI_CR1_SPE | SPI_CR1_MSTR | SPI_CR1_CPOL | SPI_CR1_CPHA | SPI_CR1_SSI | SPI_CR1_SSM;  //| SPI_CR1_BR_1 | SPI_CR1_BR_2
	SPI3->CR2 = 0;
}

void spiReadIDs(uint8_t *manufacturerID, uint16_t *deviceID, enum SLAVE slave)
{
	if(slave == WORK) GPIOG->BSRRH = GPIO_Pin_6;								// SLAVE SELECT
	else GPIOB->BSRRH = GPIO_Pin_9;
	
	spiExchangeByte(OC_READ_IDS);							// SEND OPCODE 
	*manufacturerID = spiExchangeByte(DUMMY);	// READ MANUFACTURER ID
	*deviceID = spiExchangeByte(DUMMY) << 8;	// READ MANUFACTURER ID BYTE 1
	*deviceID |= spiExchangeByte(DUMMY);			// READ MANUFACTURER ID BYTE 2
	
	if(slave == WORK) GPIOG->BSRRL = GPIO_Pin_6;							
	else GPIOB->BSRRL = GPIO_Pin_9;
}

void spiRead(uint32_t address, uint32_t bytes, uint8_t *buffer, enum SLAVE slave)
{
	uint32_t i;
	
	if(slave == WORK) GPIOG->BSRRH = GPIO_Pin_6;								// SLAVE SELECT
	else GPIOB->BSRRH = GPIO_Pin_9;
	
	spiExchangeByte(OC_READ_BYTE_MEDIUM);		// SEND OPCODE READ MEDIUM SPEED
	spiExchangeByte(address>>16);						// HIGH BYTE ADDRESS
	spiExchangeByte(address>>8);						// MEDIUM BYTE ADDRESS
	spiExchangeByte(address);								// LOW BYTE ADDRESS
	spiExchangeByte(DUMMY);					
			
	for(i=0; i<bytes; i++)	
	{
		buffer[i] = spiExchangeByte(DUMMY);		// READ AS LONG AS YOU WANT :)
	}
		
	if(slave == WORK) GPIOG->BSRRL = GPIO_Pin_6;							
	else GPIOB->BSRRL = GPIO_Pin_9;;
}

void spiWrite(uint32_t address, uint32_t bytes, uint8_t *buffer,enum SLAVE slave)
{
	uint32_t temp = 0;
	uint32_t index = 0;
	
	index = 0;
	while(bytes)
	{
		temp = PAGE_SIZE - (address % PAGE_SIZE);	// CALCULATE NUMBER OF BYTES LEFT FOR WRITING AT CURRENT PAGE
		if(temp >= bytes)
		{
			spiWritePage(address, bytes, &buffer[index], slave);
			address += bytes;
			index   += bytes;
			bytes 	= 0;
		}
		else
		{
			spiWritePage(address, temp, &buffer[index], slave);
			address += temp;
			index   += temp;
			bytes 	-= temp;
		}
	}
}

void spiWritePage(uint32_t address, uint32_t bytes, uint8_t *buffer, enum SLAVE slave)
{
	uint32_t i = 0;
	
	spiGlobalUnprotect(slave);
	
	if(slave == WORK) GPIOG->BSRRH = GPIO_Pin_6;								// SLAVE SELECT
	else GPIOB->BSRRH = GPIO_Pin_9;
	
	spiExchangeByte(OC_WRITE);					
	spiExchangeByte(address>>16);					// HIGH BYTE ADDRESS
	spiExchangeByte(address>>8);					// MEDIUM BYTE ADDRESS
	spiExchangeByte(address);							// LOW BYTE ADDRESS
	
	for(i=0; i<bytes; i++)
	{
		spiExchangeByte(buffer[i]);
	}
	
	if(slave == WORK) GPIOG->BSRRL = GPIO_Pin_6;							
	else GPIOB->BSRRL = GPIO_Pin_9;
	
	spiWaitTillReady(slave);
}
 
void spiErase(uint32_t address, uint32_t bytes, enum SLAVE slave)
{
	uint32_t numberOfBlocks = 0;
	numberOfBlocks = ((address + bytes) / ERASE_LENGTH_SMALL) - (address / ERASE_LENGTH_SMALL) + 1;
	while(numberOfBlocks)
	{
		if(numberOfBlocks >= 16)
		{
			  spiEraseBlock(address, EBS_64KB, slave);
			  numberOfBlocks -= 16;
			  address += ERASE_LENGTH_LARGE;
		}
		else if(numberOfBlocks >= 8)
		{
			  spiEraseBlock(address, EBS_32KB, slave);
			  numberOfBlocks -= 8;
			  address += ERASE_LENGTH_MEDIUM;
		}
		else if(numberOfBlocks >= 1)
		{
			  spiEraseBlock(address, EBS_4KB, slave);
			  numberOfBlocks -= 1;
			  address += ERASE_LENGTH_SMALL;
		}
	}
}

void spiEraseBlock(uint32_t address, enum ERASE_BLOCK_SIZE size, enum SLAVE slave)
{
	spiGlobalUnprotect(slave);
	
	if(slave == WORK) GPIOG->BSRRH = GPIO_Pin_6;								// SLAVE SELECT
	else GPIOB->BSRRH = GPIO_Pin_9;
	
	spiExchangeByte((uint8_t)size);					// SEND OPCODE FOR THE SIZE TO ERASE
	spiExchangeByte(address>>16);					// HIGH BYTE ADDRESS
	spiExchangeByte(address>>8);					// MEDIUM BYTE ADDRESS
	spiExchangeByte(address);						// LOW BYTE ADDRESS
	
	if(slave == WORK) GPIOG->BSRRL = GPIO_Pin_6;							
	else GPIOB->BSRRL = GPIO_Pin_9;
	
	spiWaitTillReady(slave);
}

int32_t spiVerify(uint32_t address, uint32_t bytes)
{
	uint8_t wBuffer[PAGE_SIZE];
	uint8_t oBuffer[PAGE_SIZE];
	uint32_t realSize = 0;
	uint32_t i = 0;
	
	while(bytes)
	{
		if(bytes > PAGE_SIZE) 
		{
			spiRead(address, PAGE_SIZE, wBuffer, WORK);
			spiRead(address, PAGE_SIZE, oBuffer, ORIGINAL);
			realSize = PAGE_SIZE;
			bytes -= PAGE_SIZE;
		}
		else 
		{
			spiRead(address, bytes, wBuffer, WORK);
			spiRead(address, bytes, oBuffer, ORIGINAL);
			realSize = bytes;
			bytes = 0;
		}
		
		for(i = 0; i<realSize; i++)
		{
			if(wBuffer[i] != oBuffer[i])
			{
				return -1;
			}
		}
	}
	
	return 0;
}

static inline uint8_t spiExchangeByte(uint8_t byte)
{
	SPI3->DR = byte;			
	while((SPI3->SR & SPI_I2S_FLAG_RXNE) == 0);
	return SPI3->DR;
}

void spiWriteEnable(enum SLAVE slave)
{
	if(slave == WORK) GPIOG->BSRRH = GPIO_Pin_6;								// SLAVE SELECT
	else GPIOB->BSRRH = GPIO_Pin_9;
	spiExchangeByte(OC_WRITE_ENABLE);											// WRITE ENABLE
	if(slave == WORK) GPIOG->BSRRL = GPIO_Pin_6;							
	else GPIOB->BSRRL = GPIO_Pin_9;
}

void spiGlobalUnprotect(enum SLAVE slave)
{
	spiWriteEnable(slave);

	if(slave == WORK) GPIOG->BSRRH = GPIO_Pin_6;								// SLAVE SELECT
	else GPIOB->BSRRH = GPIO_Pin_9;
	spiExchangeByte(OC_WRITE_STATUS_BYTE1);										// SEND OPCODE WRITE STATUS REGISTER BYTE 1
	spiExchangeByte(GLOBAL_UNPROTECT);											// SET BITS IN STATUS REGISTER TO PERFORM GLOBAL UNPROTECT
	spiExchangeByte(DUMMY);														// WAIT FOR EVEN BYTE BOUNDARY	
	if(slave == WORK) GPIOG->BSRRL = GPIO_Pin_6;							
	else GPIOB->BSRRL = GPIO_Pin_9;
	
	spiWriteEnable(slave);
}

void spiWaitTillReady(enum SLAVE slave)
{
	if(slave == WORK) GPIOG->BSRRH = GPIO_Pin_6;								// SLAVE SELECT
	else GPIOB->BSRRH = GPIO_Pin_9;
	
	spiExchangeByte(OC_READ_STATUS);											// SEND OPCODE GET STATUS REGISTER
	
	while(1)
	{
		if((spiExchangeByte(DUMMY) & 0x01) == 0) break;
	}
	
	if(slave == WORK) GPIOG->BSRRL = GPIO_Pin_6;							
	else GPIOB->BSRRL = GPIO_Pin_9;
}
