#pragma once
#include<type.h>
//数据复制
void* memcpy(void *destin,void *source,unsigned int n);
//返回字符串有效长度
size_t strlen(const char* str);
//将指定内存块设置为指定的值
void *memset(void *src,int val,size_t n);

//安全的字符串复制
char * safestrcpy(char *s,const char *t,int n);

char *strchr(const char *s, int c);

int strncmp(const char *str1, const char *str2, size_t n);