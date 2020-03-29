#include<macro.h>

typedef int errno;      //错误类型，该错误类型小于0，因此判断返回值是否小于0，即可确定是否返回了错误值
#define _IS_ERRNO(err)       ((err)<NULL)
//应用程序
#define _ERRNO_ELF_TARGET_ERROR         -31     //目标程序不是elf格式的文件
#define _ERRNO_ELF_NOT_LOAD             -32     //未能加载程序
#define _ERRNO_INS_MEM                  -33     //内存空间不足