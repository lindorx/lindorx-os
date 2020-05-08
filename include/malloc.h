#pragma once

//获取一定页数的内存
void * palloc(unsigned long n);
//自动从用户空间获取一块内存
void * malloc(unsigned int size);
//可以将内存块清空的malloc
void *calloc(unsigned int size);
//释放内存
void free(void * addr);