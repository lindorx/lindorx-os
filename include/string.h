#pragma once
//数据复制
void* memcpy(void *destin,void *source,unsigned int n);
//返回字符串有效长度
size_t strlen(const char* str);
//将指定内存块设置为指定的值
void *memset(void *src,int val,size_t n);