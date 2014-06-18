#include <stdio.h>
#include <stdlib.h>
#include "labor6.h"
#include "tests/dac_test.h"
#include "peripherals.h"
#include "CE_Lib.h"
#include "tft.h"

int main(void) {
    //INIT
	initCEP_Board();
	while(1){
	labor6();
    }
	return EXIT_SUCCESS;
}




