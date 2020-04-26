#pragma once
#include<macro.h>
typedef unsigned short seg_sel;//段选择子
typedef unsigned short seg_s;//段选择子类型

//GDT表项数量，2^13=8192
#define GDT_INIT_NUM 8192
#define GDT_SIZE (GDT_INIT_NUM*8)
//GDT属性
#define GDT_TYPE_DATA 0x2
#define GDT_TYPE_CODE 0xa
#define GDT_TYPE_TSS 0X9	//TSS段描述符

struct GDTABLE{
	uint16	        limit0;
	uint16	        base0;
	byte		base1;
	byte		TYPE:4;
	byte		S:1;	//系统段=0，非系统段=1，ldt和tss应将其定义为0
	byte		DPL:2;	//权限
	byte		P:1;
	byte		limit1:4;
	byte		AVL:1;
	byte		L:1;
	byte		D_B:1;
	byte		G:1;
	byte		base2;
}__attribute__ ((aligned (1)));
typedef struct GDTABLE GDTtable;
typedef struct GDTABLE DESCRIPTOR;
typedef struct GDTABLE gdt_t;

//GDT表代码定义
#define GDT_NUM 5				//gdt表项数量，一共2^13=8192项,0项不可设定，可用8191项
#define GDT0_ERROR -1				//尝试设定第0项gdt错误
#define GDT_OUT_RANGE_ERROR -2			//gdt超出界线
#define GDT_SET_ERROR -3			//向内存写入描述符错误

//GDT表项结构
#define _GDT_TSS_TYPE_BUSY 	0xb		//TSS忙碌
#define _GDT_TSS_TYPE_NO_BUSY 	0x9		//TSS空闲
#define _GDT_S_0		0		//用户段
#define _GDT_S_1 		1		//系统段
#define _GDT_S_TSS 		0
#define _GDT_P_1 		1	//该描述符可用
#define _GDT_P_0 		0	//该描述符不可用
#define _GDT_AVL 		0	//AVL项，默认为0
#define _GDT_G_BYTE 		0	//段限长单位为字节
#define _GDT_G_PAGE 		1	//段限长单位为页

//GDT表项type属性
#define _GDT_TYPE_DATA_H_RW	0x2	//数据段，向高位扩展，可读可写
#define _GDT_TYPE_DATA_H_R	0x0	//数据段，向高位扩展，只读
#define _GDT_TYPE_DATA_L_RW	0x6	//数据段，向低位扩展，可读可写
#define _GDT_TYPE_DATA_L_R 	0x4	//数据段，向低位扩展，只读
#define _GDT_TYPE_CODE_N_RR	0xa	//代码段，非一致码段，可执行可读
#define _GDT_TYPE_CODE_N_R	0x8	//代码段，非一致码段，仅执行
#define _GDT_TYPE_CODE_U_RR	0xe	//代码段，一致码段，可执行可读
#define _GDT_TYPE_CODE_U_R	0xC	//代码段，一致码段，仅执行

//DB项
#define _GDT_DB_DATA 	1	//如果type属性为数据段，使用此值
#define _GDT_DB_CODE 	1	//如果type属性为代码段，使用此值

extern gdt_t gdt[GDT_INIT_NUM];            //GDT表
extern uint32 gdt_num;       //当前GDT表项的数量

//加载gdt
void load_gdt(gdt_t *gdt,uint32 n);
//安装GDT，返回段选择子
uint16 step_up_gdt(uint32 i,    //指定位置
		uint base,	//基地址
		uint limit,	//段限长，
		byte TYPE,	//段属性
		byte S,		//系统段
		byte DPL,	//权限，0～3
		byte P,		//P=1，该段可使用
		byte AVL,	//由软件设定
		byte D_B,	//TYPE设定为代码段，D=1，表示32位程序；TYPE设定为数据段，B=1，最大访问范围4GB，表示为堆栈，B=1，使用esp
		byte G);	//G=0，段限长单位是字节，G=1，单位是4kb

//初始化gdt
void init_gdt();