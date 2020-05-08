;name:boot.asm
;coding:UTF-8

include 'macro.inc'	;包含参数的宏
;head.asm位置
__head equ 0x7e00
use16
org 0x7c00
jmp _start

db 0

;文件系统
db "LINDORX_"
dw 512
db 1
dw 0x20
db 0x00,0xe8,0x03,0x00,0x00,0x80,0x00,0x02
db 0x08,0x00,0x08,0x00,0x20,0x00,0x00,0x00
db 0x08,0x00,0x02,0x00,0x00,0x00,0x29,0x78
db 0x56,0x34,0x12
db "by-lindorx0"
db "systemlx",0,0
db 0x01,0x00,0x68,0x00,0xa0,0x00,0x02,0x00
db 0x00,0x00,0x01,0x00,0x00,0x00,0x01,0x00
db 0x00,0x00

_start:
	cli
	xor ax,ax
	mov es,ax
	mov ds,ax

;设定为字符模式，80*25
	mov ax,0x03
	int 0x10
;记录系统开机时间，读取cmos,存放在0xff0,占用8字节：$|秒|分|时|日|月|年|$
	
;使用bios加载head
	mov ax,0x0200+HEAD_SECN	;ah=2,读扇区；al=15,读取扇区数
	mov cx,0x0003		;ch=0,0柱面；cl=3,2号扇区
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
	
	;准备进入保护模式
	lgdt ptr gdt_size
	;打开A20地址线
	in al,0x92
	or al,0000_0010b
	out 0x92,al

	jmp __head
;spin:
;	hlt
;	jmp spin
	
;filesys db "lx1.0$$$"
;==================================================================
align 2
gdt_size:
	dw GDT_NUM*8-1
	dd gdt_start

align 4
gdt_start:
	dd GDT_NUM,gdt_start
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

