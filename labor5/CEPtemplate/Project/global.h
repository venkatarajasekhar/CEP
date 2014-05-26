#ifndef GLOBAL_H_
#define GLOBAL_H_

// spi-memory ids
#define SPI_MEM1 1
#define SPI_MEM1_H (GPIOG->BSRRH = (1<<6))
#define SPI_MEM1_L (GPIOG->BSRRL = (1<<6))

#define SPI_MEM2 2
#define SPI_MEM2_H (GPIOB->BSRRH = (1<<9))
#define SPI_MEM2_L (GPIOB->BSRRL = (1<<9))


#endif /* GLOBAL_H_ */
