#根据主makefile传过来的变量生成镜像文件
all:build
build: $(BOOTLODER_BIN) $(KERNEL_BIN) $(IMG_BIN)
	dd if=$(BOOTLODER_BIN) of=$(IMG_BIN) skip=0 seek=0 conv=notrunc
	dd if=$(KERNEL_BIN) of=$(IMG_BIN) skip=0 seek=$(KERNEL_LOAD) conv=notrunc
#	dd if=main.out of=$(IMG_BIN) skip=0 seek=128 conv=notrunc

$(BOOTLODER_BIN):boot.bin head.bin lk.bin
	copy boot.bin /b + head.bin /b $(BOOTLODER_BIN)
	dd if=lk.bin of=$(BOOTLODER_BIN) seek=$(LK_SEC) skip=0 conv=notrunc bs=512

$(IMG_BIN):
	dd if=/dev/zero of=$(IMG_BIN) bs=512 count=$(IMG_SIZE)

cle:
	del *.bin *.elf

dumpboot:
	-objdump -b binary -D -m i386 bootloder.bin > bootloder.txt