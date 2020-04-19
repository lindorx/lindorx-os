#include<sysio.h>
#include<_asm.h>
void panic(const char * str)
{
        sys_printk("%s\n",str);
        for(;;)
                asm_cpu_hlt();
}