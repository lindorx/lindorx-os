;name:boot.asm
;coding:UTF-8

include 'macro.inc'	;包含参数的宏
;head.asm位置
__head equ 0x7e00
GDT_NUM equ 3		;gdt表项数量
use16
org 0x7c00
_start:
	cli
	xor ax,ax
	mov es,ax
	mov ds,ax

;设定为字符模式，80*25
	mov ax,0x03
	int 0x10
;记录系统开机时间，读取cmos,存放在0xff0,占用8字节：$|秒|分|时|日|月|年|$
;	mov byte [START_CMOS_TIME],'$'
;	mov al,0
;	out 0x70,al
;	in al,0x71		;秒
;	mov [START_CMOS_TIME+1],al
;
;	mov al,2
;	out 0x70,al
;	in al,0x71		;分
;	mov [START_CMOS_TIME+2],al
;
;	mov al,4		;时
;	out 0x70,al
;	in al,0x71
;	mov [START_CMOS_TIME+3],al
;
;	mov al,7		;日
;	out 0x70,al
;	in al,0x71
;	mov [START_CMOS_TIME+4],al
;	
;	mov al,8		;月
;	out 0x70,al
;	in al,0x71
;	mov [START_CMOS_TIME+5],al
;
;	mov al,9		;年
;	out 0x70,al
;	in al,0x71
;	mov [START_CMOS_TIME+6],al
;	mov byte [START_CMOS_TIME+7],'$'

;使用bios加载head
	mov ax,0x0200+HEAD_SIZE	;ah=2,读扇区；al=15,读取扇区数
	mov cx,0x0002		;ch=0,0柱面；cl=1,1号扇区
	mov dx,0x0080		;dh=0,0磁头；dl=0x80,硬盘
	mov bx,__head		;es:bx=0:0x7e00,被加载的地址
	int 0x13

;保存显示信息
	mov ah,0x0f
	int 0x10
	mov edi,DISPLAY_MODE
	movzx ecx,al
	mov [edi],ecx	;保存显示模式
	movzx ecx,ah
	mov [edi+4],ecx	;保存总字符行数
	movzx ecx,bh 
	mov [edi+8],ecx	;保存显示页
;设定GDT表
	mov si,gdt_start
	mov di,GDT_ADDR	;将gdt加载至GDT_ADDR处
	mov cx,GDT_NUM*8/4
	rep movsd	;将GDT复制到GDT_TABLE位置
	;准备进入保护模式
	lgdt ptr gdt_size
	;打开A20地址线
	in al,0x92
	or al,0000_0010b
	out 0x92,al

;设置PE位，进入保护模式
;	mov eax,cr0
;	or eax,1
;	mov cr0,eax
;修改段寄存器
;	mov ax,OS_DATA
;	mov ds,ax
;	mov ss,ax
;	mov es,ax
;	mov gs,ax
;	mov fs,ax
;	mov esp,0x600000


	jmp __head
;spin:
;	hlt
;	jmp spin
	
;filesys db "lx1.0$$$"
;==================================================================
align 2
gdt_size:
	dw GDT_NUM*8-1
	dd GDT_ADDR

align 4
gdt_start:
	dd GDT_NUM,GDT_ADDR
;#1，平坦模型，代码段，段选择子0x8
;段基址，0；段界限0xfffff；描述符子类型（TYPE）=1010b，代码段=执行、可读;描述符类型（S）=1，代码段；特权级（DPL）=0；段存在位（P）=1；
;软件位（AVL）=0；64位段标志（L）=0；D位=1；G位=1，以4kb为单位；
	GDTitem 0,0xfffff,1010b,1,0,1,0,0,1,1
;#2，平坦模型，数据段，段选择子0x10
	GDTitem 0,0xfffff,0010b,1,0,1,0,0,1,1

times 254-($-$$) db 0
;这里为分区


times 510-($-$$) db 0
dw 0xaa55

