#ifndef __CHANGE_H__
#define __CHANGE_H__

#include <stdio.h>

#define MAX(a,b) (((a)>(b))?(a):(b))
#define MIN(a,b) (((a)<(b))?(a):(b))
#define SWAP(a,b)	\
	{				\
		int temp;	\
		temp = (a);	\
		(a) = (b);	\
		(b) = temp;	\
	}
int change();
void swap(unsigned int *a, unsigned int *b);
void swap1(unsigned int *a, unsigned int *b);

#endif