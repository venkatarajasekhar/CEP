#ifndef GLOBAL_H_
#define GLOBAL_H_

// spi-memory ids
#define SPI_MEM_WORK 1
#define SPI_MEM_WORK_H (GPIOG->BSRRH = (1<<6))
#define SPI_MEM_WORK_L (GPIOG->BSRRL = (1<<6))

#define SPI_MEM_ORIGINAL 2
#define SPI_MEM_ORIGINAL_H (GPIOB->BSRRH = (1<<9))
#define SPI_MEM_ORIGINAL_L (GPIOB->BSRRL = (1<<9))

#define SPI_MEM_SIZE 0xff000

#endif /* GLOBAL_H_ */
