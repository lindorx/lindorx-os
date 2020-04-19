;0-0x1fff被gdt表占用
;0x2000-0x2fff被idt表占用
;0x3000-0xfffff为空，其中0xb8000之后为显示缓存区，因此可以利用的空间大小为0xb8000-0x3000=0xb5000，共724kb
;上述空间用来存放系统相关信息
;0x100000-0x501000为页表
;0x501000-0x600000为系统堆栈，共1020kb

;GDT表
;GDT_ADDR EQU 0x501000		;GDT被加载的位置
GDT_ADDR equ 0x7c00
GDT_SIZE EQU 0x2000		;GDT长度，2^13=8192=0x2000

;IDT表
IDT_ADDR EQU GDT_ADDR+GDT_SIZE	;将idt表跟在gdt表后面
IDT_SIZE EQU 0x1000		;idt最多有256个表项，每项8字节，占用0x800，为保证分页机制，因此将其设定为1页大小
IDT_NUM EQU 48			;预定义idt表项数量

;信息结构
SYSTEM_INFO EQU IDT_ADDR+IDT_SIZE	;系统信息块
CPUID_TXT equ SYSTEM_INFO	;cpuid提取出的信息，占用16+4字节
START_CMOS_TIME EQU CPUID_TXT+20	;开机时间位置，结构如下：
;struct SYS_TIME{
;	byte s;		//秒
;	byte m;		//分
;	byte h;		//时
;	byte day;		//日
;	byte month;		//月
;	byte year;		//年
;}
START_CMOS_TIME_size EQU 6	;开机时间结构占用6字节
START_TIME_YEAR EQU 2019	;起始年份

;显示模式
DISPLAY_MODE EQU START_CMOS_TIME+START_CMOS_TIME_size


;使用0x15 bios中断读出内存信息
MEMORY_INFO EQU DISPLAY_MODE	;内存信息位置
MEMORY_INFO_SIZE EQU 20
;备份bootloder位置
BOOT_INFO EQU SYSTEM_INFO+512	

;FILE_SYSTEM EQU 0x1a		;文件系统代号，占用8字节
;head.asm
HEAD_ADDR EQU 0x7E00		;head被加载的位置
HEAD_SIZE EQU 63		;head占用扇区数

;页
PAGE_ADDR EQU 0x100000		;页目录的地址
PAGE_SIZE EQU (0x400000+0x1000)	;页目录+页表长度
PGSIZE EQU 4096			;页大小，字节
;内核
KERNEL_SECTOR equ 32		;内核在硬盘中扇区位置
KERNEL_SIZE equ 256		;内核长度，单位扇区
KERNEL_PADDR equ 0x600000	;内核被加载的物理地址
KERNEL_VADDR equ 0xc0600000	;内核被加载的虚拟地址

KERNEL_STACK_SIZE equ (32*4096)		;内核堆栈大小
KERNEL_STACK_PADDR equ (KERNEL_PADDR+KERNEL_SECTOR*512)	;内核堆栈块内存的起始物理地址
KERNEL_STACK_VADDR EQU (KERNEL_VADDR+KERNEL_SECTOR*512)	;内核堆栈的起始虚拟地址
KERNEL_STACK_VBOTADDR equ (KERNEL_STACK_VADDR+KERNEL_STACK_SIZE)	;内核堆栈底栈虚拟地址
KERNEL_STACK_PBOTADDR equ (KERNEL_STACK_PADDR+KERNEL_STACK_SIZE)	;内核堆栈底栈物理地址


;load_kernel程序被加载地址
LK_ADDR equ 0x0000bce0 	;要被加载的位置，0x7c00+512*32
LK_SEC equ 32		;load_kernel硬盘位置，单位：扇区
LK_SIZE equ 32		;load_kernel程序长度，单位：扇区

OS_CODE equ 0x8			;保护模式代码段
OS_DATA equ 0x10		;保护模式数据段

;gdt表项宏定义
macro GDTitem seg_addr,seg_limit,TYPE,S,DPL,P,AVL,L,D_B,G
{
	dw seg_limit and 0xffff
	dw seg_addr and 0xffff
	db (seg_addr shr 16) and 0xff
	db TYPE+(S shl 4)+(DPL shl 5)+(P shl 7)
	db ((seg_limit shr 16) and 0x0f)+(AVL shl 4)+(L shl 5)+(D_B shl 6)+(G shl 7)
	db seg_addr shr 24
}

;设定中断，首先在内存的一个指定位置存入idt表，每个表项8字节，结构如下：
;  63                            40 39  35     32 31                 16 15                   0 
;----------------------------------------------------------------------------------------------------------------------------------
;|base1           |  null  |  d  |dpl|p|      seg       |    base0      |
;struct idtable{//idt表项
;word base0;
;word seg;
;unsigned null:8,d:5,dpl:2,p:1;
;word base1;
;}__attribute__((packed));
;seg为该中断对应的段选择子
macro IDTTbable base,seg,dpl,p
{
	dw (base and 0xffff)
	dw (seg and 0xffff)
	db 0
	db 0x0f+(dpl shl 5)+(p shl 7)
	dw (base shr 16)
}

;以下为中断处理函数
INT0 EQU div_error
INT0_SEG EQU 0x08

INT1 EQU debug_error
INT1_SEG EQU 0x08

INT2 EQU _not_2
INT2_SEG EQU 0x08

INT3 EQU call_int_3
INT3_SEG EQU 0x08

INT4 EQU overflow
INT4_SEG EQU 0x08

INT5 EQU boundary_check
INT5_SEG EQU 0x08

INT6 EQU illegal_instruction
INT6_SEG EQU 0x08

INT7 EQU unavailable_device
INT7_SEG EQU 0x08

INT8 EQU double_error
INT8_SEG EQU 0x08

INT9 EQU coprocessor_seg_error
INT9_SEG EQU 0x08

INT10 EQU invalid_TSS
INT10_SEG EQU 0x08

INT11 EQU no_seg
INT11_SEG EQU 0x08

INT12 EQU stack_seg_error
INT12_SEG EQU 0x08

INT13 EQU protect_error
INT13_SEG EQU 0x08

INT14 EQU page_error
INT14_SEG EQU 0x08

INT15 EQU _not_15
INT15_SEG EQU 0x08

INT16 EQU coprocessor_error
INT16_SEG EQU 0x08
;以下尚未定义
INT17 EQU 0
INT17_SEG EQU 0x08

INT18 EQU 0
INT18_SEG EQU 0x08

INT19 EQU 0
INT19_SEG EQU 0x08

INT20 EQU 0
INT20_SEG EQU 0x08

INT21 EQU 0
INT21_SEG EQU 0x08

INT22 EQU 0
INT22_SEG EQU 0x08

INT23 EQU 0
INT23_SEG EQU 0x08

INT24 EQU 0
INT24_SEG EQU 0x08

INT25 EQU 0
INT25_SEG EQU 0x08

INT26 EQU 0
INT26_SEG EQU 0x08

INT27 EQU 0
INT27_SEG EQU 0x08

INT28 EQU 0
INT28_SEG EQU 0x08

INT29 EQU 0
INT29_SEG EQU 0x08

INT30 EQU 0
INT30_SEG EQU 0x08

INT31 EQU 0
INT31_SEG EQU 0x08

;以下为外设中断
INT32 EQU timer_int
INT32_SEG EQU 0x08

INT33 EQU key_int
INT33_SEG EQU 0x08

INT34 EQU _irq9
INT34_SEG EQU 0x08

INT35 EQU com2_int
INT35_SEG EQU 0x08

INT36 EQU com1_int
INT36_SEG EQU 0x08

INT37 EQU lpt2_int
INT37_SEG EQU 0x08

INT38 EQU fdd_int
INT38_SEG EQU 0x08

INT39 EQU lpt1_int
INT39_SEG EQU 0x08

INT40 EQU cmos_alert_int
INT40_SEG EQU 0x08

INT41 EQU _irq2
INT41_SEG EQU 0x08

INT42 EQU reversed1_int
INT42_SEG EQU 0x08

INT43 EQU reversed2_int
INT43_SEG EQU 0x08

INT44 EQU ps_2_mouse_int
INT44_SEG EQU 0x08

INT45 EQU fpu_int
INT45_SEG EQU 0x08

INT46 EQU primary_ide_int
INT46_SEG EQU 0x08

INT47 EQU seccondary_ide_int
INT47_SEG EQU 0x08


