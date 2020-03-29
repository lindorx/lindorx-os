CURRDIR=$(notdir $(shell echo %cd%))
SOURCE=${wildcard *.c}
OBJS=$(addprefix $(ROOT_DIR)/$(CURRDIR)/,$(SOURCE:.c=.o))
#OBJS=$(SOURCE:.c=.o)
DEPS=$(SOURCE:.c=.d)


all:$(OBJS)

#-include $(DEPS)

$(OBJS):%.o:%.c
	$(CC) $(CCLIST) $^ -o $(subst $(CURRDIR),$(OBJ_DIR),$@)

cledep:
	-$(RM) *.d 

cle:
	-$(RM) *.o
