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
//#include<lapic.h>

#define NR_TASKS 1
//PROCESS proc_table[NR_TASKS];
//seg_sel ldt_s;


#define LDTS 
int _system()
{
        asm_cli();
        initsys_info();//初始化系统需要的信息
        //内存大小
        sys_printk("Memory size = %d Mb\n",_MEMORY_SIZE>>8);
        //asm_cpu_hlt();
        //init_mp();//初始化多处理器
        sys_printk("init GDT\n");
        init_gdt();//重置gdt表
        sys_printk("init memory.\n");
        init_mem();//初始化内存
        sys_printk("init IDT table.\n");
        init_int();//初始化中断描述表
        sys_printk("init task.\n");
        //open_intn(0x20);//打开计时器中断
        init_task();//初始化任务
        sys_printk("entry initpro().\n");
        //asm_sti();
        //切入0号进程
        restart();
        for(;;){
                asm_cpu_hlt();
        }
        return 0;
}
