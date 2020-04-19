#include<sysio.h>
#include<_asm.h>
#include<task.h>

//第一个程序
/*初始化所有需要开机启动的程序*/
#pragma GCC push_options
#pragma GCC optimize ("O0")
void initpro()
{
        sys_printk("init progma start\n");
        //载入文件管理程序
        int pid=fork();
        if(pid<0){
                sys_printk("--initpro:failure to fork.\n");
        }
        else if(pid==0){
                sys_printk("--initpro:child process");
                //scheduler();
                //yield();
        }
        else{
                sys_printk("--initpro:fork successful.pid=%d\n",pid);
                scheduler();
                //yield();
        }

        for(;;){
                asm_cpu_hlt();
        }
return;
}

//第二个程序
void test1()
{
        sys_printk("Test the program, fork () and exec () work.\n");
}

#pragma GCC pop_options