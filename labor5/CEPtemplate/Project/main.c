#include <stdio.h>
#include <stdlib.h>
#include "labor5.h"
#include "CE_Lib.h"
#include "spi.h"
#include "tests/spi_mem_test.h"

int main(void) {
	initCEP_Board();
	spi_setup();
	
	labor5();
		
	return EXIT_SUCCESS;
}




