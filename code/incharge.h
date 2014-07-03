//#define SWAP(a,b) (int temp;temp=a;a=b;b=temp;)
#define SWAP(a,b)	\
	{				\
		int temp;	\
		temp = (a);	\
		(a) = (b);	\
		(b) = temp;	\
	}

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