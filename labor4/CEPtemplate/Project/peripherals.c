#include <stm32f4xx.h>
#include "peripherals.h"
#include <stm32f4xx_rcc.h>
#include "CE_Lib.h"
#include "tft.h"
#include "usart.h"
#include "global.h"
#include "functiongen.h"

//kommt aus labor4.c
extern int frequency;
extern int graph_type;
extern int amplitude;
extern int srefresh;
extern int *tabelle;

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

void read_buttons(void){

	if(B1 == 0){						//is S1 pressed ? 			
		frequency = DELTA_IDX_440;
	}
	if(B2 == 0){						//is S2 pressed ? 		
		frequency = DELTA_IDX_5000;
	}
	if(B3 == 0){						//is S3 pressed ? 		
		tabelle = sinus_table;
	}
	if(B4 == 0){						//is S4 pressed ? 		
		tabelle = triangle_table;
	}
	if(B5 == 0){						//is S5 pressed ? 		
		amplitude = b_big;
	}
	if(B6 == 0){						//is S6 pressed ? 		
		amplitude = b_small;
	}
	if(B7 == 0){						//is S7 pressed ? 		
		srefresh = SREFRESH_ON;
	}		
	if(B8 == 0){						//is S8 pressed ? 		
		srefresh = SREFRESH_OFF;
	}
}




////LEDS
//#define LED0 (1<<0)	
//#define LED1 (1<<11)	
//#define LED2 (1<<13)	
//#define LED3 (1<<14)	
//#define LED4 (1<<4)		
//#define LED5 (1<<5)		
//#define LED6 (1<<6)		
//#define LED7 (1<<7)		

////SET_LEDS
//#define SET_LED0 GPIOA->ODR ^= LED0
//#define SET_LED1 GPIOH->ODR ^= LED1
//#define SET_LED2 GPIOH->ODR ^= LED2
//#define SET_LED3 GPIOH->ODR ^= LED3
//#define SET_LED4 GPIOI->ODR ^= LED4
//#define SET_LED5 GPIOI->ODR ^= LED5
//#define SET_LED6 GPIOI->ODR ^= LED6
//#define SET_LED7 GPIOI->ODR ^= LED7

////UNSET_LEDS
//#define UNSET_LED0 GPIOA->ODR ^= (0<<0)
//#define UNSET_LED1 GPIOH->ODR ^= (0<<11)
//#define UNSET_LED2 GPIOH->ODR ^= (0<<13)
//#define UNSET_LED3 GPIOH->ODR ^= (0<<14)
//#define UNSET_LED4 GPIOI->ODR ^= (0<<4)
//#define UNSET_LED5 GPIOI->ODR ^= (0<<5)
//#define UNSET_LED6 GPIOI->ODR ^= (0<<6)
//#define UNSET_LED7 GPIOI->ODR ^= (0<<7)

//int test = 0;


//void peripherals_test(){
//	while(1){
//		
//		if(B0 == 0){
//			//SET_LED0;
//			//TFT_puts(s0_ausgabe);
//		}
//		if(B0 == 1){
//			UNSET_LED0;
//			//TFT_cls();
//		}
//			
//		
//		
//		/*UNSET_LED0;
//		//TFT_cls();
//			
//				//UNSET_LED1;
//		
//		while(B1 == 0){
//			TFT_puts(s1_ausgabe);
//				TFT_cls();
//			SET_LED0;
//		}
//		
//		UNSET_LED0;
//		/*	if(B2 == 0){
//			TFT_puts(s2_ausgabe);
//			SET_LED2;
//		}*/
//	}

//}

//char *s0_ausgabe = "S1: Frequenz = 440 Hz";
//char *s1_ausgabe = "S2: Frequenz = 5000 Hz";
//char *s2_ausgabe = "S3: Sinusfoermiger Verlauf";
//char *s3_ausgabe = "S4: Saegezahnfoermiger Verlauf";
//char *s4_ausgabe = "S5: Amplitude: 1.0 V, Mittelwert: 1.5 V";
//char *s5_ausgabe = "S6: Amplitude: 0.5 V, Mittelwert: 1.5 V";
//char *s6_ausgabe = "S7: Start der Ausgabe";
//char *s7_ausgabe = "S8: Stop der Ausgabe";

