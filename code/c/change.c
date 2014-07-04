#include <stdio.h>
#include "../h/change.h"

void swap(unsigned int *a, unsigned int *b)
{
	printf("enter: a=(%0x,%d), b=(%0x,%d)\n", a, *a, b, *b);
	// to do what you want here
	/****
	*	1. 已知x,y，交换x,y的值
	*	2. 一直x,y，保存x,y的值，然后交换x,y的地址
	****/
	// init
	int *temp;
	int aa, bb;
	// step 1. backup a,b
	printf("step 1. backup a,b\n");
	aa = *a;
	bb = *b;
	// step 2. swap a,b
	temp = a;
	a = b;
	b = temp;
	// step3. restore a,b
	*a = aa;
	*b = bb;
	printf("leave: a=(%0x,%d), b=(%0x,%d)\n", a, *a, b, *b);
}

void swap1(unsigned int *a, unsigned int *b)
{
	printf("enter: a=(%0x,%d), b=(%0x,%d)\n", a, *a, b, *b);
	int temp;
	temp = *a;
	printf("nuchange a=%d,b=%d\n",*a,*b);
	*a = *b;
	printf("changed a=%d\n",*a);
	*b = temp;
	printf("changed b=%d\n",*b);
	printf("leave: a=(%0x,%d), b=(%0x,%d)\n", a, *a, b, *b);
}

int change()
{
	int x=6;
	int y=9;

	printf("nuchange x,y=%d,%d\n",x,y);	
	
	swap(&x,&y);
	printf("swap changed num is: %d,%d\n",x,y);

	swap1(&x,&y);
	printf("swap1 changed num is: %d,%d\n",x,y);

	SWAP(x,y);
	printf("SWAP changed num is: %d,%d\n",x,y);
	
	printf("max is %d\n",MAX(x,y));
	printf("min is %d\n",MIN(x,y));
	return 0;
}
