#ifndef BUFFER_H_
#define BUFFER_H_

#include <stdint.h>
#include "global.h"

typedef struct {
	uint16_t values[BUFFER_SIZE];
	unsigned int read_idx;
	unsigned int write_idx;
	unsigned int count;
} buffer_t;

buffer_t* create_buf(void);
int add_val(buffer_t* buf, uint16_t val);
int remove_val(buffer_t* buf, uint16_t* val);
int is_empty(buffer_t* buf);
int is_full(buffer_t* buf);

#endif /* BUFFER_H_ */
