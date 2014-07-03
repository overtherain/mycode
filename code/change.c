#include <stdio.h>
#include "incharge.h"
#include "a.h"
int main()
{
	int x=6;
	int y=9;

	printf("nuchange x,y=%d,%d\n",x,y);	
	//swap(&x,&y);
	//swap1(&x,&y);
	SWAP(x,y);
	printf("changed num is: %d,%d\n",x,y);
	printf("max is %d\n",MAX(x,y));
	printf("min is %d\n",MIN(x,y));
	return 0;
}
