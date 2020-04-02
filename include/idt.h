#pragma once
#include<gdt.h>

//IDT表位置
#define IDT_ADDR (GDT_ADDR+GDT_SIZE) 		//idt表基址
#define IDT_SIZE 0x1000				//idt表长度 0x800

//中断类型
#define INTERRUPT_TASK_TYPE 0x5 //任务门,不使用
#define INTERRUPT_INT_TYPE 0xf	//中断门，会修改IF位，屏蔽中断,0xe
#define INTERRUPT_TRAP_TYPE 0xf	//陷阱门，发生时一般不会修改IF位
#define INTERRUPT_EFF 1		//中断有效
#define INTERRUPT_INEFF 0	//中断无效
#pragma pack(push)
#pragma pack(1)

typedef struct _IDTTABLE{
	uint16 offset_low;	//中断程序低16位地址
	uint16 selector;	//段选择子
	uint8 reserved;		//保留
	uint8 type:4;		//中断类型
	uint8 always0:1;	//总为0
	uint8 dpl:2;		//权限
	uint8 present:1;	//中断有效=1，无效=0
	uint16 offset_high;	//中断程序高16位
}_IDTTABLE;
typedef _IDTTABLE idt_t;
#pragma pack(pop)

//在由IDT_ADDR指定的位置设置中断描述表项。
inline void set_idt(uint32 i,void (*off)(),uint16 selector,char type,char dpl,char p)
{
        ((_IDTTABLE *)IDT_ADDR)[i].offset_low=(uint16)(0xffff&(uint32)off);
        (( _IDTTABLE *)IDT_ADDR)[i].offset_high=(uint16)((uint32)off>>16);
	(( _IDTTABLE *)IDT_ADDR)[i].selector=selector;
        (( _IDTTABLE *)IDT_ADDR)[i].reserved=0;
        (( _IDTTABLE *)IDT_ADDR)[i].type=type;
        ((_IDTTABLE *)IDT_ADDR)[i].always0=0;
        (( _IDTTABLE *)IDT_ADDR)[i].dpl=dpl;
        (( _IDTTABLE *)IDT_ADDR)[i].present=p;
}

//IDTR寄存器重载
//idt_num：idt表项目数量
void asm_lidt(uint32 idt_num);