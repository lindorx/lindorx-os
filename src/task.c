/*
任务处理
*/
#include<memory.h>
#include<task.h>
#include<cpu.h>
#include<sysio.h>
#include<lapic.h>
#include<string.h>

extern int ncpu;//当前cpu数量

struct TSS32 tss;//tss段

struct task_list task;//任务链根节点。这是进程链表的创建的第一个节点

struct cpu* mycpu(void)
{
	int apicid, i;
	if(asm_load_eflags()&FL_IF)
		sys_printk("mycpu called with interrupts enabled\n");
  
  	apicid = lapicid();
  	// APIC IDs are not guaranteed to be contiguous. Maybe we should have
  	// a reverse map, or reserve a register to store &cpus[i].
  	for (i = 0; i < ncpu; ++i) {
    		if (cpus[i].apicid == apicid)
      			return &cpus[i];
  	}
  sys_printk("unknown apicid\n");
  return NULL;
}

//初始化TSS段
/*void init_tss()
{
        //将tss注册到GDT表中
        uint16 a=step_up_gdt(3,(uint)(&tss),sizeof(struct TSS32),_GDT_TSS_TYPE_NO_BUSY,_GDT_S_TSS,DPL_0,_GDT_P_1,_GDT_AVL,_GDT_DATA_32,_GDT_G_BYTE);
        //将段选择子加载到tr寄存器
        asm_ltr(a);
return;
}*/

//任务ldt表
#define _TASK_LDT_CS 0	//任务代码段在其ldt的下标
#define _TASK_LDT_DS 1	//任务数据段在其ldt的下标
//第一个任务的参数
#define _FIRST_TASK_DPL	0
#define _FIRST_TASK_LDT 3	//第一个任务的局部描述表在GDT的下标
#define _FIRST_TASK_CS	(((_TASK_LDT_CS<<3)|4)|_FIRST_TASK_DPL)	//0100,代码段选择子
#define _FIRST_TASK_DS	(((_TASK_LDT_DS<<3)|4)|_FIRST_TASK_DPL)	//1100,数据段选择子


//初始化任务
int init_task()
{
	

	seg_s tss_s=step_up_gdt(INDEX_TSS,&tss,sizeof(tss),_GDT_TSS_TYPE_NO_BUSY,0,0,1,0,0,0);
	//初始化任务的局部描述表
	task.ldts=step_up_gdt(3,task.ldt,sizeof(GDTtable)*LDT_SIZE,_GDT_TYPE_DATA_H_RW,_GDT_S_0,1,1,0,0,_GDT_G_BYTE);
	memcpy(&(task.ldt[_TASK_LDT_CS]),&gdt[OS_CODE_SEG>>3],sizeof(ldt_t));
	task.ldt[_TASK_LDT_CS].DPL=_FIRST_TASK_DPL;
	memcpy(&(task.ldt[_TASK_LDT_DS]),&gdt[OS_DATA_SEG>>3],sizeof(ldt_t));
	task.ldt[_TASK_LDT_DS].DPL=_FIRST_TASK_DPL;
	//设置段寄存器
	task.proc.tf->cs=_FIRST_TASK_CS;
	task.proc.tf->ds=_FIRST_TASK_DS;
	task.proc.tf->es=_FIRST_TASK_DS;
	task.proc.tf->fs=_FIRST_TASK_DS;
	task.proc.tf->ss=_FIRST_TASK_DS;
	task.proc.tf->gs=_FIRST_TASK_DS;
	task.proc.tf->eip=(uint32)initpro;
	task.proc.tf->esp=4096;




	asm volatile("xor %%eax,%%eax\n\t"
        "mov %0,%%ax\n\t"
        "ltr %%ax\n\t"
        ::"m"(tss_s));
	sys_printk("install tss done.\n");
	//初始化第一个进程的ldt
	
   return 0;     
}

extern void forkret(void);
extern void trapret(void);


//获取一个进程表的储存空间
/*为进程分配一页空间，同时需要分配trapframe和context*/
#define _PROC_STACK_PAGES_MASK 0
#define KSTACK_SIZE	4096
struct proc * allocproc()
{
	static struct proc * p=(struct proc*)NULL;
	static pid_t nextpid=0;
	p=(struct proc *)__kmalloc(sizeof(struct proc));
	if(p==(struct proc *)NULL)
		return (struct proc *)NULL;
	memset(p,0,sizeof(struct proc));
	p->state = EMBRYO;
	p->pid = nextpid++;
	char * sp;
	p->kstack=__get_free_pages(___GFP_PMEM,_PROC_STACK_PAGES_MASK);
	if(p->kstack==NULL){
		__kfree(p);
		return (struct proc*)NULL;
	}
	sp=p->kstack+KSTACK_SIZE;
	sp-=sizeof(struct trapframe);
	p->tf=(struct trapframe*)sp;
	sp-=4;
	*(uint*)sp=(uint)trapret;
	sp-=sizeof(struct context);
	p->context=(struct context*)sp;
	memset(p->context,0,sizeof(struct context));
	p->context->eip=(uint)forkret;
	return p;
}

