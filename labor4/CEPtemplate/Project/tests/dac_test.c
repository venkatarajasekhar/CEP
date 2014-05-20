#include "../dac.h"
#include "dac_test.h"

void dac_test(void) {
	dac_setup();
	
	while(1){
	
		dac_set(2048);
		dac_set(0);
		
		dac_set(1024);
		dac_set(0);

		dac_set(4095);
		dac_set(0);
		
	}
}
