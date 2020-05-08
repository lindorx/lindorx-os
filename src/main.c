#include<initsi.h>
#include<memory.h>
#include<int.h>
#include<_asm.h>
#include<string.h>
#include<test.h>
#include<gdt.h>
#include<proc.h>
#include<task.h>
#include<mp.h>
#include<ldt.h>
#include<stdio.h>
#include<malloc.h>
#include<fs/lx.h>
#include<file.h>

#pragma GCC push_options
#pragma GCC optimize ("O0")
int _system()
{
        asm_cli();
        initsys_info();//初始化系统需要的信息
        //内存大小
        sys_printk("Memory size = %d Mb\n",_MEMORY_SIZE>>8);
        init_gdt();//重置gdt表
        init_mem();//初始化内存
        init_int();//初始化中断描述表
        init_task();//初始化任务
         //初始化文件系统
        if(!init_lx() || creat_tree(CREATE_TREE_DISK)<0)
                goto hlt_system;
        printf("init lxfs done.\n");

        //切入进程
        restart();

        hlt_system:
        for(;;){
                asm_cpu_hlt();
        }
        return 0;
}
#pragma GCC pop_options