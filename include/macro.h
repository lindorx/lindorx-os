#pragma once
#include<type.h>

#define FALSE 0
#define TRUE 1
#define NULL 0
#define NULLPTR ((void *)NULL)

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
#define KERNEL_SIZE (32*512)	//内核长度，单位：字节
#define KERNEL_PADDR		0x600000		//内核物理地址
#define KERNEL_ADDR		0xc0600000 						//内核物理地址
#define KERNEL_SPACE_BASE	0xc0000000					//内核空间被映射的地址
#define KERNEL_SPACE_BASE_STI	(KERNEL_SPACE_BASE/PGSIZE)		//内核空间在页表的起始项
#define KERNEL_SPACE_BASE_PTA	(KERNEL_SPACE_BASE_STI*sizeof(pte_t))	//内核空间在页表的起始位置
#define KERNEL_SPACE_SIZE	(0x100000000-0xc0000000)		//内核空间大小
#define KERNEL_SPACE_NP		(KERNEL_SPACE_SIZE/PGSIZE)		//内核空间占用页数
#define KERNEL_SPACE_PTN	KERNEL_SPACE_NP				//内核空间在页表占用的表项数
#define KERNEL_SPACE_PDN	((KERNEL_SPACE_PTN*sizeof(pte_t))/PGSIZE)	//内核空间在页目录占用的表项数

#define KERNEL_SPACE_BASE_SDI	(KERNEL_SPACE_BASE_PTA/PGSIZE)		//内核空间在页目录的起始项
#define KERNEL_SPACE_BASE_PDA	(KERNEL_SPACE_BASE_DI*sizeof(pde_t))	//内核空间在页目录的起始位置

#define KERNEL_STACK_SIZE	(32*4096)	//内核堆栈大小
#define KERNEL_STACK_PADDR	(KERNEL_PADDR+KERNEL_SIZE)		//内核堆栈物理地址
#define KERNEL_STACK_VADDR 	(KERNEL_STACK_PADDR+KERNEL_SPACE_BASE)	//内核堆栈虚拟地址
#define KERNEL_STACK_PBOTADDR	(KERNEL_STACK_PADDR+KERNEL_STACK_SIZE)	//内核堆栈底栈物理地址
#define KERNEL_STACK_VBOTADDR	(KERNEL_STACK_VADDR+KERNEL_STACK_SIZE)	//内核堆栈底栈虚拟地址

//用户空间
#define USER_ADDR	0
#define USER_SZ	(KERNEL_SPACE_BASE-USER_ADDR)	//用户空间长度
#define USER_PSZ (USER_SZ/PGSIZE)		//用户空间占用页数

//地址
#define P2V(a) ((void *)((char*)(a)+KERNEL_SPACE_BASE))	//将物理地址转换为虚拟地址
#define V2P(va) ((uint)(va)-KERNEL_SPACE_BASE)	//虚拟地址转换为物理地址

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

//停止程序执行
#define hlt1() do{		\
	for(;;)asm_cpu_hlt();	\
}while(0)
