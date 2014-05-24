#ifndef PERIPHERALS_H_
#define PERIPHERALS_H_

//LEDS
#define LED0 0x01	
#define LED1 0x02
#define LED2 0x04	
#define LED3 0x08	
#define LED4 0x10		
#define LED5 0x20		
#define LED6 0x40		
#define LED7 0x80		

//SPECIAL_LEDS
#define UNDERFLOW_LED LED0
#define WAITING_LED LED7

void peripherals_test(void);
void read_buttons(void);
	
#endif /* PERIPHERALS_H */
