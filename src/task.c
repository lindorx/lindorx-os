/*
任务处理
*/
#include<memory.h>
#include<task.h>
#include<cpu.h>
#include<sysio.h>
#include<program.h>
#include<string.h>
#include<panic.h>
#include<proc.h>
#include<syscall.h>

extern int ncpu;//当前cpu数量

struct TSS32 tss={0};//tss段

struct task_struct *task=NULL;//任务链根节点。这是进程链表的创建的第一个节点
struct task_struct *nowtask=NULL;//指向当前任务

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
	task=alloctask();
	sys_printk("init_task():task=0x%x\n",task);
	if(task==NULL)
		panic("init_task:alloctask() error.");
	tasklist.task=task;
	//初始化任务的局部描述表
	task->ldts=step_up_gdt(3,task->ldt,sizeof(GDTtable)*TASK_LDT_SZIE,_GDT_TYPE_DATA_H_RW,_GDT_S_0,1,1,0,0,_GDT_G_BYTE);
	memcpy(&(task->ldt[_TASK_LDT_CS]),&gdt[OS_CODE_SEG>>3],sizeof(ldt_t));
	task->ldt[_TASK_LDT_CS].DPL=_FIRST_TASK_DPL;
	memcpy(&(task->ldt[_TASK_LDT_DS]),&gdt[OS_DATA_SEG>>3],sizeof(ldt_t));
	task->ldt[_TASK_LDT_DS].DPL=_FIRST_TASK_DPL;
	task->ldtsz=TASK_LDT_SZIE;
	//sys_printk("gdt=0x%x\n",gdt[1].base0+(gdt[1].base1<<16));
	sys_printk("gdt addr=0x%x\n",gdt);
	sys_printk("ldt addr=0x%x\n",task->ldt);

	//sys_printk("ldt=0x%x\n",task->ldt[0].base0+(task->ldt[0].base1<<16));
	//初始化进程
	task->proc.sz=1;
	task->proc.pgdir=PAGE_DIR_VA;
	memset(task->proc.name,"initpro",8);
	task->next1=task;
	task->prev1=task;
	//设置段寄存器
	task->proc.tf->cs=_FIRST_TASK_CS;
	task->proc.tf->ds=_FIRST_TASK_DS;
	task->proc.tf->es=_FIRST_TASK_DS;
	task->proc.tf->fs=_FIRST_TASK_DS;
	task->proc.tf->ss=_FIRST_TASK_DS;
	task->proc.tf->gs=_FIRST_TASK_DS;
	task->proc.tf->eip=(uint32)initpro;
	task->proc.tf->esp=0xc0000000;
	task->proc.tf->eflags=0x1000;
	//设置tss
	seg_s tss_s=step_up_gdt(INDEX_TSS,&tss,sizeof(tss),_GDT_TSS_TYPE_NO_BUSY,0,0,1,0,0,0);
	memset(&tss,0,sizeof(tss));
	tss.ss0=OS_DATA_SEG;//设置堆栈
	sys_printk("set tss done.\n");
	//将tss的段选择子加载到ltr寄存器
	asm volatile("xor %%eax,%%eax\n\t"
        "mov %0,%%ax\n\t"
        "ltr %%ax\n\t"
        ::"m"(tss_s));
	sys_printk("install tss done.\n");
	nowtask=task;
   return 0;     
}

//此程序将会从内核切换到第一个进程
void restart()
{
        asm volatile("mov %1,%%esp\n\t"
	"lldt %2\n\t"
	"movl %3,%0\n\t"
	"popa\n\t"
	"pop %%gs\n\t"
	"pop %%fs\n\t"
	"pop %%es\n\t"
	"pop %%ds\n\t"
	"add $8,%%esp\n\t"	//跳过trapno
	"iret\n\t"
	:"=m"(tss.esp0)
	:"g"((char*)task->proc.tf),	//进程的trapframe
	"m"(task->ldts),			//进程局部描述表的段选择子
	"g"(&(task->ldts))		//进程局部描述表选择子的地址
        );
return;
}


extern void forkret(void);
extern void trapret(void);


//获取一个进程表的储存空间
/*为进程分配一页空间，同时需要分配trapframe和context*/
#define _PROC_STACK_PAGES_ORDER 0
#define KSTACK_SIZE	4096
struct proc * allocproc()
{
	static struct proc * p=(struct proc*)NULL;
	static pid_t nextpid=0;
	p=(struct proc *)__kmalloc(sizeof(struct proc));//获取一块内存
	if(p==(struct proc *)NULL)
		return (struct proc *)NULL;
	memset(p,0,sizeof(struct proc));//清空
	p->state = EMBRYO;
	p->pid = nextpid++;//进程id
	char * sp;
	p->kstack=__get_free_pages(___GFP_PMEM,_PROC_STACK_PAGES_ORDER);//获取一页作为堆栈
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

//释放进程空间
//需要释放proc和进程页占用的空间
void freeproc(struct proc *p)
{
	__free_pages(p->kstack,_PROC_STACK_PAGES_ORDER);
	__kfree(p);
return;
}

//获取一个任务空间
struct task_struct *alloctask()
{
	struct task_struct *t;
	static pid_t nextpid=0;
	//获取一块内存储存进程结构
	t=(struct task_struct*)__kmalloc(sizeof(struct task_struct));
	sys_printk("alloctask():t=0x%x\n",t);

	if(t==NULL)return NULL;
	memset(t,0,sizeof(struct task_struct));
	t->proc.state=EMBRYO;
	t->proc.pid=nextpid++;
	char *sp;
	t->proc.kstack=__get_free_pages(___GFP_KMEM,_PROC_STACK_PAGES_ORDER);
	sys_printk("alloctask:t->proc.kstack=0x%x\n",t->proc.kstack);

	if(t->proc.kstack==NULL){
		__kfree(t);
		return (struct task_struct*)NULL;
	}
	
	sp=(char*)(t->proc.kstack)+KSTACK_SIZE;
	sp-=sizeof(struct trapframe);
	t->proc.tf=(struct trapframe*)sp;
	sp-=4;
	*(uint*)sp=(uint)trapret;
	sp-=sizeof(struct context);
	t->proc.context=(struct context*)sp;
	memset(t->proc.context,0,sizeof(struct context));
	t->proc.context->eip=(uint)forkret;
	return t;
}
void freetask(struct task_struct* t)
{
	__free_pages(t->proc.kstack,_PROC_STACK_PAGES_ORDER);
	__kfree(t);
return;
}

extern pid_t fork_pid;
pid_t fork()
{
	pid_t pid=0;
	asm volatile("int $0x80"
	:"=a"(pid)
	:"a"(syscall_fork));
	return pid;
}

//
struct task_struct *mytask()
{
	return nowtask;
}