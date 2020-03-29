#include<init.h>
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

#define NR_TASKS 1
PROCESS proc_table[NR_TASKS];
seg_sel ldt_s;

void restart()
{
        asm volatile("mov %1,%%esp\n\t"
	"lldt %2\n\t"
	"movl %3,%0\n\t"
	"pop %%gs\n\t"
	"pop %%fs\n\t"
	"pop %%es\n\t"
	"pop %%ds\n\t"
	"popa\n\t"
	"add $4,%%esp\n\t"
	"iret\n\t"
	:"=m"(tss.esp0):
	"g"((char*)proc_table),"m"(proc_table->ldt_sel),"g"(&(proc_table->ldt_sel))
        );
return;
}

void init_descriptor(ldt_t * p_desc,uint32 base,uint32 limit,uint16 att)
{
        p_desc->limit0=limit&0x0ffff;
        p_desc->base0=base&0x0ffff;
        p_desc->base1=(base>>16)*0x0ff;
        p_desc->type0=att&0x0ff;
        p_desc->type1=((limit>>16)&0x0f)|((att>>8)&0xf0);
        p_desc->base2=(base>>24)*0x0ff;
        load_gdt(GDT_ADDR,INDEX_TSS);
}

#define vir2phys(seg_base,vir) (uint32)(((uint32)seg_base)+(uint32)(vir))
//由段选择子求地址
uint32 seg2phys(uint16 seg)
{
        ldt_t *p_dest=(ldt_t*)&(gdt[seg>>3]);
        return (p_dest->base2<<24)|
                (p_dest->base1<<16)|
                (p_dest->base0);
}


//初始化进程表
void init_pt()
{
        PROCESS* p_proc=proc_table;
        p_proc->ldt_sel=ldt_s;
        memcpy(&p_proc->ldts[0],&gdt[OS_CODE_SEG>>3],sizeof(ldt_t));
        p_proc->ldts[0].DPL=1;
        memcpy(&p_proc->ldts[1],&gdt[OS_DATA_SEG>>3],sizeof(ldt_t));
        p_proc->ldts[1].DPL=1;
        p_proc->regs.cs=5;
        p_proc->regs.ds=13;
        p_proc->regs.es=13;
        p_proc->regs.fs=13;
        p_proc->regs.ss=13;
        p_proc->regs.gs=13;
        p_proc->regs.eip=(uint32)testa;
        p_proc->regs.esp=0xc0600000-0x1000;
        p_proc->regs.eflags=0x1000;
        //设置tss
        memset(&tss,0,sizeof(tss));
        tss.ss0=OS_DATA_SEG;
        sys_printk("set tss done.\n");

        /*init_descriptor((ldt_t*)&(gdt[INDEX_TSS]),
                        vir2phys(seg2phys(OS_DATA_SEG),&tss),
                        sizeof(tss),
                        DA_386TSS);*/
        //安装tss
        step_up_gdt(INDEX_TSS,&tss,sizeof(tss),_GDT_TSS_TYPE_NO_BUSY,0,0,1,0,0,0);
        //加载tss
        asm volatile("xor %%eax,%%eax\n\t"
        "mov %0,%%ax\n\t"
        "ltr %%ax\n\t"
        ::"n"(SELECTOR_TSS));
        sys_printk("install tss done.\n");
        return;
}

#define LDTS 
int _system()
{
        initsys_info();//初始化系统需要的信息
        init_mp();//初始化多处理器

        init_gdt();//重置gdt表
        sys_printk("init memory.\n");
        init_mem();//初始化内存
        sys_printk("init IDT table.\n");
        init_idt();//初始化中断描述表
        sys_printk("init task.\n");
        init_task();//初始化任务
        //测试
        static GDTtable ldts[LDT_SIZE];
 
        //创建ldt
        /*ldt_s=step_up_gdt(3,proc_table->ldts,sizeof(GDTtable)*LDT_SIZE,_GDT_TYPE_DATA_H_RW,_GDT_S_0,1,1,0,0,_GDT_G_BYTE);
        init_pt();
        PROCESS* p_proc_ready=proc_table;
        restart();*/
        
        for(;;){
                asm_cpu_hlt();
        }
        return 0;
}
