
#include<sysio.h>
//式样化字符输出函数
int printf(const char *format, ...)
{
        int num;
        //将参数传递给系统输出函数
        va_list va;
        va_start(va,format);
        num=sys_printv(format,va);
        va_end(va);
        return num;
}

int puts(const char* string)
{
        return sys_printk("%s\n",string);
}

int putchar(int ch)
{
        return sys_putchar(ch);
}