//这是操作系统运行的第一个任务
#include<sysio.h>
int main()
{
        sys_printk("task start!\n");
        //运行shell程序
        
        return 0;
}