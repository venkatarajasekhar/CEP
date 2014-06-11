/*----------------------------------------------------------------------------
 * Name:    Retarget.c
 * Purpose: 'Retarget' layer for target-dependent low level functions
 * Note(s):  	Alfred Lohmann
 *        	  HAW-Hamburg
 *          	Labor f�r technische Informatik
 *          	Berliner Tor  7
 *          	D-20099 Hamburg
 * 						version V1.0
 *         		adapted to the HAW TI-Bord
 *    HTM: 2.5.2014
 *        Changed to USART6
 *----------------------------------------------------------------------------
 * This file is part of the uVision/ARM development tools.
 * This software may only be used under the terms of a valid, current,
 * end user licence from KEIL for a compatible version of KEIL software
 * development tools. Nothing else gives you the right to use this software.
 *
 * This software is supplied "AS IS" without warranties of any kind.
 *
 * Copyright (c) 2012 Keil - An ARM Company. All rights reserved.
 *----------------------------------------------------------------------------*/

#include <stdio.h>
#include <rt_misc.h>
#include <usart.h>


struct __FILE { int handle; /* Add whatever you need here */ };
FILE __stdout;
FILE __stdin;


/**
  * @brief  Outputs a character to USART1
  * @param  c .. charater to output
  *         *f . not checked in this implementation
  * @retval error .. not used
  */
int fputc(int c, FILE *f) {
  int err;

	if (c == '\n')  {
    do{
			err = USART_SendChar('\r');
		}while (err != 0);
  }

  do{
    err = USART_SendChar(c);
  }while (err != 0);

  return (err);
}


/**
  * @brief  Reads one character from USART1
  * @param  file .. not used in this implementation
  * @retval character read
  */
int fgetc(FILE *f) {
  int ch;

  do{
    ch = USART_GetKey();
  }while (ch == (-1));

	fputc(ch, &__stdout);

  return (ch);
}


/**
  * @brief  Outputs to ferror
  * @param  file .. not implemented
  * @retval EOF ..
  */
int ferror(FILE *f) {
  /* Your implementation of ferror */
  return EOF;
}


/**
  * @brief  Outputs a character to USART1
  * @param  c .. charater to output
  * @retval none
  */
void _ttywrch(int c) {
   int err;

  do{
    err = USART_SendChar(c);
  }while (err != 0);
}


/**
  * @brief  Action when main() returns
  * @param  return code .. not used
  * @retval none
  */
void _sys_exit(int return_code) {
label:  goto label;  /* endless loop */
}
