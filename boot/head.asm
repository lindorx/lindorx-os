;name:head.asm
;coding:UTF-8
;head跟在boot文件的后面，处于1~15扇区
;head用来处理cpuid指令，开启分页，初始化中断，加载内核，初始化系统关键内存。。。
include 'macro.inc'

;信息块

db 0xfd,0xff,0x01,0x00,0x21,0x00,0x00,0x00
db 0xfe,0xff,0x01,0x00,0x5c,0xff,0x01,0x00
db "LX-lindorx2020",0,0x80
times 512-($-$$) db 0

;cpuid指令
org 0x7e00

use16
;保存内存信息
;	mov eax,0xe820
;	xor ebx,ebx
;	mov edi,MEMORY_INFO
;	mov ecx,20
;	mov edx,0x534d4150
;	int 0x15
;=============================================================

;设置PE位，进入保护模式
	mov eax,cr0
	or eax,1
	mov cr0,eax
;修改段寄存器
	mov ax,OS_DATA
	mov ds,ax
	mov ss,ax
	xor ax,ax
	mov es,ax
	mov fs,ax
	mov gs,ax
	mov esp,KERNEL_STACK_PBOTADDR
;清空流水线，并串行化处理器
	jmp dword OS_CODE:_start
use32
_start:
;检查是否支持cpuid指令，检查eflags寄存器的ID标志位，如果可以修改，则说明支持cpuid指令。
	pushfd
	mov ebp,esp
	mov eax,dword [ebp]
	xor dword [esp],0x200000
	popfd
	pushfd
	pop ebx
	cmp eax,ebx
	jne @f
	jmp open_page
@@:
	mov ax,OS_DATA	;设定平坦模型下的数据段
	mov es,ax
	mov eax,0
	cpuid	;执行cpuid指令后，返回信息以字符串形式储存在ebx，edx，ecx
;将cpu信息存入CPUID_TXT地址起始的16字节
	mov eax,'CPU:'
	mov dword [es:CPUID_TXT+0],eax
	mov dword [es:CPUID_TXT+4],ebx
	mov dword [es:CPUID_TXT+8],edx
	mov dword [es:CPUID_TXT+12],ecx
;jmp initinter
open_page:
;打开分页模式
;写入页目录，共1024项，每项4字节，每一项表示一页页表。结构如下：
;31                        12 11  9 8  7 6  5  4    3     2   1   0
;------------------------------------------------------------------------------------------------------
;|PageBase                 |AVL|0|0|D|A| 0 | 0 |U/S|R/W|P|
;------------------------------------------------------------------------------------------------------
;P：存在位；
;R/W：读写标志；
;U/S：用户特权级；
;A：访问位
;D：脏位，由处理器设定，指示此页是否写入过数据
;AVL：由软件设定
PageTbBase equ PAGE_ADDR+0x1000
PG_P equ 1		;P属性，页存在标志
PG_NP equ 0		;P属性，页不存在
PG_RWR equ 0		;R/W标志，读/执行
PG_RWW equ 2		;R/W标志，读/写/执行
PG_USS equ 0		;U/S属性，系统级
PG_USU equ 4		;U/S属性，用户级

	mov ebx,PAGE_ADDR		;ebx存入页目录地址
	mov edx,ebx
;写入页目录
	mov eax,(PageTbBase OR PG_P OR PG_USS OR PG_RWW)
	mov ecx,1024
@@:
	mov [ebx],eax
	add ebx,4
	add eax,0x1000
	loop @b
;写入页表
	mov ecx,1024*1024
	mov eax,(PG_P OR PG_USS OR PG_RWW)
@@:
	mov [ebx],eax
	add ebx,4
	add eax,0x1000
	loop @b

;完成页的分配，此时虚拟地址和物理地址是一一对应，现在将页目录地址加载进cr3寄存器
	mov eax,edx
	mov cr3,eax
;打开分页模式，令cr0最高位等于1即可
	mov eax,cr0
	or eax,0x80000000
	mov cr0,eax

;=============================================================
;将idt表复制到指定位置
;initinter:
	mov esi,idt_start
	mov edi,IDT_ADDR
	mov ecx,IDT_NUM*2	;每一个idt表项大小为8字节，因此次数需要*2
	rep movsd
	lidt ptr idt_size

;映射硬件中断
;	禁止全部外部中断,分别向0x21和0xa1端口写入0xff
;	0x21=0xff
;	0xa1=0xff
;设置主片8259a
;	0x20=0x11	;初始化ICW1
;	0x21=0x20	;ICW2用来储存中断起始向量，比如将ICW2设置为0x20，则主片发送过来的中断将会是int 0x20～0x27。
;	0x21=0x04	;=00000100,意思是从片接在主片的2号引脚IRQ2
;	0x21=0x01	;不需要使用缓冲区
;设置从片
;	0xa0=0x11	;初始化ICW1
;	0xa1=0x28	;将从片的中断号设置为0x28～2f
;	0xa1=2		;从片ICW3高5位不被使用，低三位用来说明从片接在主片的哪个引脚上，和主片的ICW3有区别
;	0xa1=0x01	;不需要使用缓冲区	
;恢复,只允许IRQ2的中断发送过来
;	0xa1=0xff
;	0x21=0xfb
;具体实现：
	mov eax,0x282011ff
	out 0x21,al
	out 0xa1,al
	;初始化
	;ICW1
	mov al,ah
	out 0x20,al
	out 0xa0,al
	;ICW2
	shr eax,16
	out 0x21,al
	mov al,ah
	out 0xa1,al
	;ICW3
	mov eax,0x010204
	out 0x21,al
	mov al,ah
	out 0xa1,al
	;ICW4
	shr eax,16
	out 0x21,al
	out 0xa1,al

;=============================================================
;初始化计时器，
	mov al,0x34
	out 0x43,al
	mov eax,0x1234dc/500	;设定100Hz
	;mov eax,0x2e9b
	out 0x40,al
	mov al,ah
	out 0x40,al
;=============================================================
;开启中断,将0x21端口对应的位设置为0，在这里设置命令字ICW1
	mov al,0xfc
	out 0x21,al
	mov al,0xff
	out 0xa1,al
	sti
;测试中断
;	int 0x80
;	cli
;	hlt
;=============================================================
;从cmos读取当前时间，储存到指定位置
	mov ebx,START_CMOS_TIME		;设定存入位置
	mov edi,ebx
	mov edx,1
	mov ecx,3
	mov ax,0
@@:
	out 0x70,al
	in al,0x71
	mov [es:ebx],al
	inc ebx
	add ah,2
	mov al,ah
	loop @b
	mov ecx,3
	mov eax,7
	mov ah,al
@@:
	out 0x70,al
	in al,0x71
	mov [es:ebx],al
	inc ebx
	inc ah
	mov al,ah
	loop @b
;=============================================================
;加载load_kernel程序，此程序位于物理地址0x7c00+32*512

;下面需要设置页表，

;加载kernel，并映射内核地址，内核位置由macro.inc中的宏给出

mov ecx,KERNEL_SIZE/8+1	;页数
mov ebx,0x101000+(KERNEL_VADDR shr 12)*4	;页表地址
mov eax,KERNEL_PADDR or PG_P or PG_RWW or PG_USS	;被映射地址

@@:
	mov [ebx],eax
	add ebx,4
	add eax,0x1000
	loop @b
	
cli
call LK_ADDR	;切换到load_kernel程序
cmp eax,0
je not_load_kernel
;映射堆栈，将内核后一块内存作为堆栈
mov edx,eax
mov ecx,KERNEL_STACK_SIZE/PGSIZE;
mov ebx,0x101000+(KERNEL_STACK_VADDR shr 12)*4
mov eax,KERNEL_STACK_PADDR or PG_P or PG_RWW or PG_USS
@@:
	mov [ebx],eax
	add ebx,4
	add eax,0x1000
	loop @b

mov esp,KERNEL_STACK_VBOTADDR	;修改堆栈


call edx	;将控制权交给内核

spin:
	hlt
	jmp spin

;未能加载内核
not_load_kernel:
	mov ax,OS_DATA
	mov ebx,str_not_load_kernel
	mov ecx,str_not_load_kernel.size
	mov dl,0x02
	call print_string
	jmp spin

struc db [data]
{
 common
 . db data
 .size = $ - .
}
str_not_load_kernel db "Not load kernel!",13,10

include 'fun32.inc'
include 'interrupt.inc'

align 2
idt_size:
dw IDT_NUM*8-1
dd IDT_ADDR

;这里定义了0～48号中断
align 8
idt_start:
IDTTbable INT0,INT0_SEG,0,1
IDTTbable INT1,INT1_SEG,0,1
IDTTbable INT2,INT2_SEG,0,1
IDTTbable INT3,INT3_SEG,0,1
IDTTbable INT4,INT4_SEG,0,1
IDTTbable INT5,INT5_SEG,0,1
IDTTbable INT6,INT6_SEG,0,1
IDTTbable INT7,INT7_SEG,0,1
IDTTbable INT8,INT8_SEG,0,1
IDTTbable INT9,INT9_SEG,0,1
IDTTbable INT10,INT10_SEG,0,1
IDTTbable INT11,INT11_SEG,0,1
IDTTbable INT12,INT12_SEG,0,1
IDTTbable INT13,INT13_SEG,0,1
IDTTbable INT14,INT14_SEG,0,1
IDTTbable INT15,INT15_SEG,0,1
IDTTbable INT16,INT16_SEG,0,1
IDTTbable INT17,INT17_SEG,0,1
IDTTbable INT18,INT18_SEG,0,1
IDTTbable INT19,INT19_SEG,0,1

IDTTbable INT20,INT20_SEG,0,1
IDTTbable INT21,INT21_SEG,0,1
IDTTbable INT22,INT22_SEG,0,1
IDTTbable INT23,INT23_SEG,0,1
IDTTbable INT24,INT24_SEG,0,1
IDTTbable INT25,INT25_SEG,0,1
IDTTbable INT26,INT26_SEG,0,1
IDTTbable INT27,INT27_SEG,0,1
IDTTbable INT28,INT28_SEG,0,1
IDTTbable INT29,INT29_SEG,0,1
IDTTbable INT30,INT30_SEG,0,1
IDTTbable INT31,INT31_SEG,0,1
;外设中断
IDTTbable INT32,INT32_SEG,0,1
IDTTbable INT33,INT33_SEG,0,1
IDTTbable INT34,INT34_SEG,0,1
IDTTbable INT35,INT35_SEG,0,1
IDTTbable INT36,INT36_SEG,0,1
IDTTbable INT37,INT37_SEG,0,1
IDTTbable INT38,INT38_SEG,0,1
IDTTbable INT39,INT39_SEG,0,1
IDTTbable INT40,INT40_SEG,0,1
IDTTbable INT41,INT41_SEG,0,1
IDTTbable INT42,INT42_SEG,0,1
IDTTbable INT43,INT43_SEG,0,1
IDTTbable INT44,INT44_SEG,0,1
IDTTbable INT45,INT45_SEG,0,1
IDTTbable INT46,INT46_SEG,0,1
IDTTbable INT47,INT47_SEG,0,1
dd 0,0,0,0,0,0,0,0,0,0
dd 0,0,0,0,0,0,0,0,0,0
dd 0,0,0,0,0,0,0,0,0,0
dd 0,0,0,0,0,0,0,0,0,0
dd 0,0,0,0,0,0,0,0,0,0
dd 0,0,0,0,0,0,0,0,0,0
dd 0,0,0,0,0,0,0,0,0,0
dd 0,0,0,0,0,0,0,0
IDTTbable INT128,INT128_SEG,0,1
IDTTbable INT128,INT128_SEG,0,1
IDTTbable INT128,INT128_SEG,0,1
IDTTbable INT128,INT128_SEG,0,1
IDTTbable INT128,INT128_SEG,0,1
IDTTbable INT128,INT128_SEG,0,1
IDTTbable INT128,INT128_SEG,0,1
IDTTbable INT128,INT128_SEG,0,1