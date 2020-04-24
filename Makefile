#编译整个内核

vpath %.asm $(BOOTDIR)
vpath %.c $(SRCDIR)
SHELL=cmd
#>>>软件
CC=gcc
LD=LD
RM=del
AR=ar

export RM
#>>>路径
#ROOTDIR=${shell powershell cmd /c echo %cd%}
ROOTDIR=$(shell cmd /c echo %cd%)
SRCDIR=src
INCLUDEDIR=include
OBJDIR=obj
BINDIR=bin
DEVDIR=dev
BOOTDIR=boot
DEPDIR=dep
DISASMDIR=disasm

#>>>内核所需文件
#boot文件
BOOTFILE=$(BOOTDIR)/boot.asm 
HEADFILE=$(BOOTDIR)/head.asm
BCFILES=$(BOOTDIR)/lk.c

BOOTBIN=${patsubst %.asm,%.bin,$(BOOTFILE)}
HEADBIN=${patsubst %.asm,%.bin,$(HEADFILE)}
BOOTCBIN=${patsubst %.c,%.bin,$(BCFILES)}

#内核文件
KCFILES=${wildcard $(SRCDIR)/*.c} ${wildcard $(SRCDIR)/*.S}	#src目录下的所有.c和.s文件
KOFILES=${patsubst $(SRCDIR)/%.c,$(OBJDIR)/%.o,$(KCFILES)} ${patsubst $(SRCDIR)/%.S,$(OBJDIR)/%.o,$(KCFILES)}
#中断文件
KINTFS=$(DEVDIR)/int.c	#int.c文件需要不同的编译参数，单独编译
KINTOFS=${patsubst $(DEVDIR)/%.c,$(OBJDIR)/%.o,$(KINTFS)}	#中断的工程文件

#>>>系统
#bootloder
BOOTLODER=$(BINDIR)/bootloder.bin
BOOTLODER_SIZE=32		#单位：扇区，512字节

BOOT_SECN=1	#boot占用扇区
BOOT_SIZE=512	#boot大小
HEAD_SECN=15		#head占用扇区数，
HEAD_SIZE=$(shell powershell $(HEAD_SECN)*512)	#HEAD_SECN*512，head大小
LK_SECN=16		#lk程序占用扇区数
LK_SIZE=$(shell powershell $(LK_SECN)*512)	#LK_SECN*512,lk大小
LK_LOAD_ADDR=${shell powershell (\'0x\'+(0x7e00+$(HEAD_SIZE)).ToString(\'x\'))}	#load_kernel被加载的位置	
LK_SEEK_SEC=16	#lk在bootloder的扇区

#镜像文件名称
IMG=lindorx.img
IMG_SIZE=1088
#内核程序
KBIN=$(ROOTDIR)/$(BINDIR)/kernel.out
KERNEL_LOAD=$(BOOTLODER_SIZE)	#内核的加载位置


#>>>软件参数
#ar打包参数
ARLIST=-r -v
#objcopy参数
OBJCOPYLIST= -S -O binary -j .text -j .rdata -j .stab
COFF_TO_ELF=-O elf32-i386	#将coff格式转换为elf格式
#ld链接参数
LDLIST=-m i386pe -N -Ttext 0xc0600000 -e __system -o
#头文件目录
CC_INCLUDE=-I $(ROOTDIR)/include
#生成依赖文件
CC_DEPS=-MMD -MP -MF ${patsubst $(OBJDIR)/%.o,$(DEPDIR)/%.d,$@}
#普通.c编译参数
CCLIST=-nostdinc -O2\
	-Werror \
	-fno-stack-protector -fno-tree-ch -fno-strict-aliasing \
	-Wall -Wno-format -Wno-unused -Wno-array-bounds -Wno-int-conversion\
	-gstabs -m32\
	-DJOS_KERNEL -c \
	$(CC_INCLUDE)	\
	$(CC_DEPS)

#中断文件编译参数（dev/int.c）
CC_INT_LIST=-O2 -mgeneral-regs-only -c $(CC_INCLUDE)

all: $(IMG)

-include $(DEPDIR)/*.d

#>>>编译内核
#创建kernel.out
$(IMG): $(KBIN) $(BOOTLODER) 
	dd if=/dev/zero of=$(IMG) bs=512 count=$(IMG_SIZE)
	dd if=$(BOOTLODER) of=$(IMG)
	dd if=$(KBIN) of=$(IMG) seek=$(KERNEL_LOAD) conv=notrunc
	
#引导
#以下创建引导程序bootloder.bin
$(BOOTLODER):$(BOOTBIN) $(HEADBIN) $(BOOTCBIN)
	dd if=/dev/zero of=$(BOOTLODER) bs=512 count=$(BOOTLODER_SIZE)
	dd if=$(BOOTBIN) of=$(BOOTLODER)
	dd if=$(HEADBIN) of=$(BOOTLODER) seek=1 skip=0 conv=notrunc bs=512
	dd if=$(BOOTCBIN) of=$(BOOTLODER) seek=$(LK_SEEK_SEC) skip=0 conv=notrunc bs=512

%.bin:%.asm
	fasm $^ $@

#编译lk.c文件，此文件用于加载elf格式的内核程序
#创建lk.bin
LKO=${patsubst %.c,%.o,$(BCFILES)}
LKOUT=${patsubst %.c,%.out,$(BCFILES)}
$(BOOTCBIN):$(BCFILES)
	$(CC) $(CCLIST) $^ -o $(LKO)
	$(LD) -m i386pe -N -Ttext $(LK_LOAD_ADDR) -o $(LKOUT) $(LKO)
	objcopy $(OBJCOPYLIST) $(LKOUT) $(BOOTCBIN)
	objdump -D -m i386  $(LKOUT) > $(ROOTDIR)/$(BOOTDIR)/lk.txt
	python $(BOOTDIR)/mlka.py $(ROOTDIR)/$(BOOTDIR)/lk.txt

#生成kernel程序
#链接内核，并将内核编译为elf格式
$(KBIN):$(KOFILES) $(KINTOFS)
	$(LD) $(LDLIST) $(ROOTDIR)/$(BINDIR)/kernel.out $(OBJDIR)/*.o
	objcopy $(COFF_TO_ELF) $(ROOTDIR)/$(BINDIR)/kernel.out $(KBIN)

#.o文件规则
$(OBJDIR)/%.o:$(SRCDIR)/%.c
	$(CC) $< -o $@ $(CCLIST) 

$(OBJDIR)/%.o:$(SRCDIR)/%.S
	$(CC) $< -o $@ $(CCLIST)

#编译中断程序
$(KINTOFS):$(KINTFS)
	$(CC) $(CC_INT_LIST) $(KINTFS) -o $(KINTOFS)

.PHONY:clean run dbg dump

clean:
	@cd $(OBJDIR) && make cle
	@cd $(BOOTDIR) && make cle
	

run:	#运行镜像
	bochs -f bochsrc.txt
#	bochs-p4-smp -f bochsrc.txt

dbg:
	bochsdbg -f bochsrc.txt
#	bochsdbg-p4-smp -f bochsrc.txt

#反汇编整个镜像
dpi:
	-objdump -D -m i386 -b binary $(IMG) > kernel.txt

#反汇编所有文件
dumpa:
	-objdump -D -m i386 -b binary $(BOOTLODER) > $(DISASMDIR)/bootloder.asm
	-objdump -D -m i386 $(KBIN) >  $(DISASMDIR)/kernel.asm

#反汇编引导程序
dpb:
	-objdump -D -m i386 -b binary $(BOOTLODER) > $(DISASMDIR)/bootloder.asm

#反汇编内核
dpk:$(KBIN)
	-objdump -D -m i386 $(KBIN) >  $(DISASMDIR)/kernel.asm
