#pragma once
#include<macro.h>
#include<sysio.h>

#ifdef __x86_64__
typedef unsigned long long int uword_t;
#else
typedef unsigned int uword_t;
#endif

static int keypos=0;
//中断结构
struct interrupt_frame{
uint32 eip;
uint32 cs;
uint32 eflags;
};

#define INTRE_NUM 256

int syscall_table(uint n,uint eip,uint cs,uint eflags);

//中断初始化
void init_int();

//放开指定硬件中断
int open_intn(uint n);
int close_intn(uint n);
