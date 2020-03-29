#load_kernel程序被加载的位置 

#SUBDIRS=$(shell ls -l | grep ^d | awk '{print $$9}')
#获取后缀名为asm的文件
BOOT_SOURCE=${wildcard *.asm}
#通过源文件名得到输出文件名，并存入新变量
BOOT_BIN=${patsubst %.asm,%.bin,$(BOOT_SOURCE)}

all:c_boot $(BOOT_BIN) 

$(BOOT_BIN):%.bin:%.asm 
	fasm $^ $(ROOT_DIR)/$(BIN_DIR)/$@
	
c_boot:lk.c lk.txt
	gcc -O2 -c -I ../include lk.c -o lk.o
	$(LD) -m i386pe -N -Ttext $(LK_LOAD_ADDR)  -o lk.out lk.o
	objcopy $(OBJCOPYLIST) lk.out $(ROOT_DIR)/$(BIN_DIR)/lk.bin
	python mlka.py

dump:lk.out
	-objdump -D -m i386 lk.out > lk.txt

clk:lk.c
	gcc -O2 -Wall -m32 -Werror -nostdinc -c -I ../include lk.c -o lk.o
	ld -m i386pe -N -Ttext 0xbc00 -o lk.out lk.o -e _load_kernel

cle:
	$(RM) *.out *.o
