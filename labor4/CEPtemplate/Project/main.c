#include <stdio.h>
#include <stdlib.h>
#include "labor4.h"
#include "tests/dac_test.h"
#include "peripherals.h"
#include "CE_Lib.h"
#include "tft.h"

int main(void) {
	
	initCEP_Board();
	TFT_Init();
	

	labor4();
	//dac_test();
		
	return EXIT_SUCCESS;
}




