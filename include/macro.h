#pragma once
#include<type.h>

#define FALSE 0
#define TRUE 1
#define NULL 0

#define OS_CODE_SEG 	0x8		//系统代码段选择子
#define OS_DATA_SEG 	0x10	//系统数据段选择子

//磁盘类型
#define DISK_TYPE_HDD 0x01	//这里假定为机械硬盘
//权限
#define DPL_0 0
#define DPL_1 1
#define DPL_2 2
#define DPL_3 3
//所有SIZE的单位均为 字节
//系统参数区
//#define SYS_PAR 0
//#define SYS_PAR_SIZE 0X1000

//文件系统说明，8字节
#define FILE_SYSTEM 0xff8
//年份基数
#define START_TIME_YEAR 2019

//内核定义
#define KERNEL_ADDR 0xc0600000 						//内核物理地址
#define KERNEL_SPACE_BASE 0xc0000000					//内核空间被映射的地址
#define KERNEL_SPACE_BASE_PTA	(KERNEL_SPACE_BASE/MEMORY_PAGE_SIZE)	//内核空间在页表的起始位置

//#define STACK_SIZE 0x1000 							//内核堆栈大小
//#define KERNEL_VIRTUAL (0xC0000000+KERNEL_ADDR)		//内核虚拟地址
#define KERNEL_SIZE (64*512)	//内核长度，单位：字节

//初始加载完内核后的剩余空间起始位置
//注意：这里是预先设定好的值，如果修改了其他内存占用，需要注意此值
#define INITIALLY_UNUSED_MEMORY_ADDR 0x700000

#define BASE_MEMORY_CAPACITY (32*1024*1024)	//要求最小内存容量

//系统位数定义

#ifdef __system_64
typedef long ptr_t;//指针类型，用来指向不确定类型的数据
#else
typedef int ptr_t;
#endif

//映射之后的地址
#define _V_IDT_ADDR	0xc0000000	//IDT表虚拟地址
#define _v_KERNEL_ADDR	0xc0600000	//kernel虚拟地址
#define _V_SYSTEM_INFO	0xc0003000	//信息结构地址

//链表处理程序
//将a节点加入链表元素b的后面
#define list_insert(a,b)	do{\
	(a)->prev=(b);\
	(a)->next=(b)->next;\
	(b)->next->prev=(a);\
	(b)->next=(a);\
}while(0)
