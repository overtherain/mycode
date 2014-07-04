#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int daoxu()
{
	// char* src="hello,world";
	// int len=strlen(src);
	// printf("strlen = %d",len);
	// char* dest=(char*)malloc(len+1);
	// char* d=dest;
	// char* s=&src[len-1];
	// while(len--!=0)
	// 	*d++=*s--;
	// *d=0;
	// printf("%s\n",dest);
	// free(dest);
	// dest=NULL;
	// return 0;
	char str[]="hello,world";
	int len=strlen(str);
	char t;
	for(int i=0;i<len/2;i++)
	{
		t=str[i];
		str[i]=str[len-i-1];
		str[len-i-1]=t;
	}
	printf("%s\n",str);
	return 0;
}
