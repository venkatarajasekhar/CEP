#ifndef GLOBAL_H_
#define GLOBAL_H_

#define CPU_FREQ 168000000
#define SAMPLE_FREQ 44100				//cep4 -> 44107

#define FIXPOINT_ARITH 16

#define SREFRESH_ON 1
#define SREFRESH_OFF 0

#define REPLAY 1
#define SKIP 1

#define DAC_MAX_V 3.3
#define DAC_MAX_VAL 4095

//Buttons-Mask
#define S0 (1<<9)			
#define S1 (1<<2)			
#define S2 (1<<6)			
#define S3 (1<<7)			
#define S4 (1<<8)			
#define S5 (1<<10)			
#define S6 (1<<12)			
#define S7 (1<<15)	

//Button_Values
#define B1 (GPIOI->IDR & S0)
#define B2 (GPIOC->IDR & S1)
#define B3 (GPIOF->IDR & S2)
#define B4 (GPIOF->IDR & S3)
#define B5 (GPIOF->IDR & S4)
#define B6 (GPIOH->IDR & S5)
#define B7 (GPIOH->IDR & S6)
#define B8 (GPIOH->IDR & S7)

//LEDS
#define LED0 0x01	
#define LED1 0x02
#define LED2 0x04	
#define LED3 0x08	
#define LED4 0x10		
#define LED5 0x20		
#define LED6 0x40		
#define LED7 0x80	

#endif /* GLOBAL_H_ */
