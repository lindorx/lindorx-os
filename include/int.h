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

//这里定义各个中断

//除法指令出错，如除数为0
//方法：
__attribute__ ((interrupt))
void div_ins_error(struct interrupt_frame* frame,uword_t error_code);//int 0
//调试异常
void debug_error();//int 1
//不可屏蔽中断(NMI)
void non_maskable_interrupt();//int 2
//软中断（int 3）
void call_int_3();//int 3
//发生溢出
void overflow();//int 4
//边界检查(bound指令)
void boundary_check();//int 5
//非法指令
void illegal_instruction();//int 6
//设备不可用
void unavailable_device();//int 7
//双重故障
void double_error();//int 8
//协处理器段溢出
void coprocessor_seg_error();//int 9
//无效TSS
void invalid_TSS();//int 0xa
//段不存在
void no_seg();//int 0xb
//堆栈段异常
void stack_seg_error();//int 0xc
//通用保护异常
void protect_error();//int 0xd
//页异常
void page_error();//int 0xe
//保留
void _not_15();//int 0xf
//协处理器出错
void coprocessor_error();//int 0x10
//对其检查中断
void Alignment_check();//int 0x11

//计时器中断（8253芯片） int 0x20
__attribute__ ((interrupt))
void timer_int(struct interrupt_frame* frame);
//键盘中断 int 0x21
__attribute__ ((interrupt))
void key_int(struct interrupt_frame* frame);
//8259的irq9引脚中断 int 0x22
void _irq9();
//串行口2中断 int 0x23
void com2_int();
//串行口1中断 int 0x24
void com1_int();
//并行口2中断，声卡 int 0x15
void lptr2_int();
//软驱控制器 int 0x26
void fdd_int();
//并行口1中断，打印机控制器 int 0x27
void lpt1_int();
//即时时钟 int 0x28
void cmos_alert_int();
//与irq2主芯片相连 int 0x29
void _irq2();
//保留，建议给网卡 int 0x2a
void reversed1_int();
//保留，建议给APG显卡 int 0x2b
void reversed2_int();
//鼠标 int 0x2c
void ps_2_mouse_int();
//协处理器 int 0x2d
void fpu_int();
//主硬盘传输控制 int 0x2e
void primary_ide_int();
//从硬盘传输控制 int 0x2f
void seccondary_ide_int();

//异常
#define ABORT_INT_0 div_error
#define ABORT_INT_1 debug_error
#define ABORT_INT_2 nmi_interrupt
#define ABORT_INT_3 breakpoint_int
#define ABORT_INT_4 overflow
#define ABORT_INT_5 bound_range
#define ABORT_INT_6 undefined_opcode
#define ABORT_INT_7 no_math_cp
#define ABORT_INT_8 double_fault
#define ABORT_INT_9 coprocessor_seg_error
#define ABORT_INT_10 invalid_tss
#define ABORT_INT_11 seg_not_present
#define ABORT_INT_12 stack_seg_error
#define ABORT_INT_13 general_protection
#define ABORT_INT_14 page_fault
#define ABORT_INT_15 _do_not_use_15
#define ABORT_INT_16 math_fault 
#define ABORT_INT_17 align_check
#define ABORT_INT_18 machine_check
#define ABORT_INT_19 streaming_simd_ext

//中断
#define INTERRUPT_32 timer_int
#define INTERRUPT_33 key_int
#define INTERRUPT_34 _irq9
#define INTERRUPT_35 com2_int
#define INTERRUPT_36 com1_int
#define INTERRUPT_37 lptr2_int
#define INTERRUPT_38 fdd_int
#define INTERRUPT_39 lpt1_int
#define INTERRUPT_40 cmos_alert_int
#define INTERRUPT_41 _irq2
#define INTERRUPT_42 reversed1_int
#define INTERRUPT_43 reversed2_int
#define INTERRUPT_44 ps_2_mouse_int
#define INTERRUPT_45 fpu_int
#define INTERRUPT_46 primary_ide_int
#define INTERRUPT_47 seccondary_ide_int

//中断初始化
void init_int();


void key();
void switch_to();