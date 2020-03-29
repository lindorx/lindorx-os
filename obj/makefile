#将.o文件链接
#生成输出文件

all:$(KERNEL_BIN)

$(KERNEL_BIN):$(KERNEL_OUT)
	objcopy $(COFF_TO_ELF) $(KERNEL_OUT) $(ROOT_DIR)/$(BIN_DIR)/$(KERNEL_BIN) 
#	objcopy $(OBJCOPYLIST) $(KERNEL_OUT) $(ROOT_DIR)/$(BIN_DIR)/$(KERNEL_BIN) 

$(KERNEL_OUT):*.o
	$(LD) $(LDLIST) $(KERNEL_OUT) *.o

cle:
	-$(RM) *.o *.out