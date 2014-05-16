#include <stdio.h>
#include "buffer.h"
#include "global.h"

/*
 * creates a new buffer and sets default values
 *
 * return: new buffer
 */
buffer_t* create_buf(void) {
	buffer_t tmp_buf;
	buffer_t* ret_buf = &tmp_buf;

	int i;
	for(i = 0; i<BUFFER_SIZE; i++) {
		tmp_buf.values[i] = 0;
	}

	tmp_buf.read_idx = 0;
	tmp_buf.write_idx = 0;
	tmp_buf.count = 0;

#ifdef DEBUG
	printf("create_buf(): buffer created, buffer=0x%p\n", ret_buf);fflush(stdout);
#endif

	return ret_buf;
}

/*
 * adds a new value to the buffer
 *
 * param: existing buffer, value to add
 * return: success/failure
 */
int add_val(buffer_t* buf, uint16_t val) {
	if(buf->count == BUFFER_SIZE) {

#ifdef DEBUG
		printf("add_val(): ERROR: buffer is full!, buffer=0x%p, val=0x%x\n", buf, val);fflush(stdout);
#endif

		return 0;
	} else {
		buf->values[buf->write_idx] = val;
		buf->write_idx = (buf->write_idx + 1) % BUFFER_SIZE;
		buf->count++;

#ifdef DEBUG
		printf("add_val(): value has been added to buffer, buffer=0x%p, val=0x%x\n", buf, val);fflush(stdout);
#endif

		return 1;
	}
}

/*
 * removes an existing value from the buffer
 *
 * param: existing buffer, pointer where value should be stored
 * return: success/failure
 */
int remove_val(buffer_t* buf, uint16_t* val) {
	if(buf->count == 0) {

#ifdef DEBUG
		printf("remove_val(): ERROR: buffer is empty!, buffer=0x%p\n", buf);fflush(stdout);
#endif

		return 0;
	} else {
		*val = buf->values[buf->read_idx];
		buf->read_idx = (buf->read_idx + 1) % BUFFER_SIZE;
		buf->count--;

#ifdef DEBUG
		printf("remove_val(): value has been removed from buffer, buffer=0x%p, val=0x%p\n", buf, val);fflush(stdout);
#endif

		return 1;
	}
}

/*
 * checks is a buffer is empty
 *
 * param: existing buffer
 * return: empty, not empty
 */
int is_empty(buffer_t* buf) {
	if(buf->count == 0) {

#ifdef DEBUG
		printf("is_empty(): buffer is empty, buffer=0x%p\n", buf);fflush(stdout);
#endif

		return 1;
	} else {

#ifdef DEBUG
		printf("is_empty(): buffer is not empty, buffer=0x%p\n", buf);fflush(stdout);
#endif

		return 0;
	}
}

/*
 * checks is a buffer is full
 *
 * param: existing buffer
 * return: full, not full
 */
int is_full(buffer_t* buf) {
	if(buf->count == BUFFER_SIZE) {

#ifdef DEBUG
		printf("is_empty(): buffer is full, buffer=0x%p\n", buf);fflush(stdout);
#endif

		return 1;
	} else {

#ifdef DEBUG
		printf("is_empty(): buffer is not full, buffer=0x%p\n", buf);fflush(stdout);
#endif

		return 0;
	}
}
