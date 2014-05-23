#ifndef FUNCTIONGEN_H_
#define FUNCTIONGEN_H_

#define TABLE_SIZE 256

uint16_t calc(void);

extern const unsigned int DELTA_IDX_440;
extern const unsigned int DELTA_IDX_5000;
extern const unsigned int SHIFTED_TABLE_SIZE;

extern const unsigned int a; 
extern const unsigned int b_small;
extern const unsigned int b_big;

extern int sinus_table[TABLE_SIZE];
extern int triangle_table[TABLE_SIZE];

#endif /* FUNCTIONGEN_H_ */
