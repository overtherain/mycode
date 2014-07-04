#include <stdio.h>
int inc(int a)
{
	return(++a);
}//得出a+1

int dec(int a)
{
	return (a-1);
}//得出a-1

int multi(int*a,int*b,int*c)
{
	return(*c= *a * *b);
}//得出(inc/dec)*a

typedef int (FUNC1)(int in);
typedef int (FUNC2)(int*,int*,int*);

void show(FUNC2 fun,int arg1, int*arg2)
{
	FUNC1 *p = &inc;         //定义函数p （++a）
	int temp = p(arg1);		 //temp = a+1
	fun(&temp, &arg1, arg2); //
	printf("%d\n", *arg2);	 
	
	p = &dec;
	temp = p(arg1);
	fun(&temp, &arg1, arg2);
	printf("%d\n", *arg2);
}

int main()
{  
	int a;          		 //局部变量a为0; 
	show(multi,10,&a);		 //带入函数c=a*b( (arg1+1)*arg1 )，变量a（arg1）,计算结果c(arg2)
	return 0;
}