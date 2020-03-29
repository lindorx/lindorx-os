#编译整个内核

#>>>软件
SHELL=cmd
CC=gcc
LD=LD
RM=del
AR=AR


#>>>路径
ROOTDIR=$(shell echo %cd%)
SRCDIR=src
INCLUDEDIR=include
OBJDIR=obj
BINDIR=bin
DEVDIR=dev
BOOTDIR=boot

#>>>内核所需文件
#boot文件
BFILES=boot.asm head.asm
BCFILES=lk.c
#内核文件
KCFILES=${wildcard $(SRCDIR)/*.c} ${wildcard $(SRCDIR)/*.s}	#src目录下的所有.c和.s文件
KOFILES=${patsubst $(SRCDIR)/%.c,$(OBJDIR)/%.o,$(KCFILES)} ${patsubst $(SRCDIR)/%.s,$(OBJDIR)/%.o,$(KCFILES)}
#中断文件
KINTFS=$(DEVDIR)/int.c	#int.c文件需要不同的编译参数，单独编译
KINTOFS=${patsubst %.c,%.o,$(KINTFS)}	#中断的工程文件

#>>>系统
#bootloder
BOOTLODER=$(BINDIR)/bootloder.bin
BOOTLODER_SIZE=64		#单位：扇区，512字节
LK_LOAD_ADDR=0xbc00		#load_kernel被加载的位置，0x7c00+512*32
LK_SEC=32			#load_kernel在硬盘中的扇区位置

#镜像文件名称
KIMG=lindorx.img
#内核程序
KBIN=$(ROOTDIR)/$(BINDIR)/lindorx.out
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
#普通.c编译参数
CCLIST=-nostdinc -O2 \
	-Werror \
	-fno-stack-protector -fno-tree-ch -fno-strict-aliasing \
	-Wall -Wno-format -Wno-unused -Wno-array-bounds -Wno-int-conversion\
	-gstabs -m32\
	-DJOS_KERNEL -c \
	$(CC_INCLUDE)
#中断文件编译参数（dev/int.c）
CC_INT_LIST=-O2 -mgeneral-regs-only -c $(CC_INCLUDE)


#BOOTBIN=${patsubst %.asm,%.bin,$(BFILES)}
BOOTBIN=bin/boot.bin 
HEADBIN=bin/head.bin
BOOTCBIN=${patsubst %.c,%.bin,$(BCFILES)}

#>>>编译内核

$(KIMG):$(BOOTLODER) $(KBIN)
	dd if=$(BOOTLODER) of=$(KIMG)
	dd if=$(KBIN) of=$(KIMG) seek=$(KERNEL_LOAD) conv=notrunc
	
#引导
#以下创建引导程序bootloder.bin
$(BOOTLODER):$(BOOTBIN) $(HEADBIN) $(BOOTCBIN)
	dd if=$(BOOTBIN) of=$(BOOTLODER)
	dd if=$(HEADBIN) of=$(BOOTLODER) seek=1 skip=0 conv=notrunc 
	dd if=$(BOOTCBIN) of=$(BOOTLODER) seek=$(LK_SEC) skip=0 conv=notrunc

$(BINDIR)/%.bin:$(BOOTDIR)/%.asm
	fasm $^ $@

BOOTCFILE=$(BOOTDIR)/$(BCFILES)
LKO=${patsubst %.c,%.o,$(BOOTCFILE)}
LKOUT=${patsubst %c,%.out,$(BOOTCFILE)}

$(BOOTCBIN):$(BOOTCFILE)
	$(CC) -O2 -c $(CC_INCLUDE) $^ -o $(LKO)
	$(LD) -m i386pe -N -Ttext $(LK_LOAD_ADDR)  -o $(LKOUT) $(LKO)
	objcopy $(OBJCOPYLIST) $(LKOUT) $(ROOTDIR)/$(BINDIR)/$(BOOTCBIN)
	python $(BOOTDIR)/mlka.py

#生成kernel程序
$(KBIN):$(KOFILES) $(KINTOFS)
	$(LD) $(LDLIST) $(ROOTDIR)/$(BINDIR)/kernel.out $(OBJDIR)/*.o
	objcopy $(COFF_TO_ELdmF) $(ROOTDIR)/$(BINDIR)/kernel.out $(KBIN)

vpath %.c $(SRCDIR)

#.o文件规则
$(OBJDIR)/%.o:$(SRCDIR)/%.c
	$(CC) $(CCLIST) $^ -o $@

$(KINTOFS):$(KINTFS)
	$(CC) $(CC_INT_LIST) $(KINTFS) -o $(KINTOFS)

.PHONY:clean
clean:
	$(RM) $(ROOTDIR)/$(OBJDIR)/*.o $(ROOTDIR)/$(BINDIR)/*.bin