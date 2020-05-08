//此文件用于处理应用程序
#include<task.h>
#include<string.h>
#include<proc.h>
#include<sysio.h>
#include<panic.h>

static int eflags=0;
struct task_list tasklist={0};


struct context bufcontext={0,0,0,0,forkret};
struct context *pbufcontext=&bufcontext;

void pushcli(void)
{
        eflags = asm_load_eflags();
        asm_cli();
}

void popcli(void)
{
  if(eflags & FL_IF)
        asm_sti();
}

//获取当前工作的进程
//获取时需要关闭中断，防止在切换期间发生中断
struct task_struct *myproc()
{
        struct task_struct *p=NULL;
        pushcli();//关闭中断
        p=nowtask;
        popcli();//放开中断
        return p;
}

/*原理：复制当前进程，创建一个子进程并写入进程表
方法：获取当前进程=》申请一个进程块=》通过页目录将父进程设置为只可读=》通过复制父进程页表创建子进程页表=》

*/
//创建一个子进程
//子进程返回0，父进程返回子进程pid，错误则返回-1

pid_t sys_fork(void)
{       
        pid_t pid;
        struct task_struct *nt;
        struct task_struct *curt=mytask();
        //申请新的任务空间
        if((nt=alloctask())==NULL){
                //sys_printk("(nt=alloctask())==NULL");
                return -1;
        }
        //复制原进程trapframe
        nt->proc.sz=curt->proc.sz;
        nt->proc.parent=curt;
        memcpy(nt->proc.tf,curt->proc.tf,sizeof(struct trapframe));
        nt->proc.tf->eax=0;
        //复制进程名
        safestrcpy(nt->proc.name,curt->proc.name,sizeof(curt->proc.name));
        //获取进程号
        pid=nt->proc.pid;
        //将新建进程加入链表
        task_run_insert(nt);
        //将父进程的页表设置为只读
        page_set_rw(curt->proc.pgdir,USER_PSZ*sizeof(pte_t)/PGSIZE,_PAGE_RWR);
        //创建子进程的页表，由于子进程页表复制自父进程，因此子进程也会被设置为不可写状态
        nt->proc.pgdir=copyuvm(curt->proc.pgdir,curt->proc.sz);
        if(nt->proc.pgdir==NULL){
                //sys_printk("nt->proc.pgdir==NULL\n");
                return -1;
        }
             
        //获取任务锁
        acquire(&tasklist.lock);
        nt->proc.state=RUNNABLE;
        release(&tasklist.lock);
        //sys_printk("fork:return.\n");
        return pid;
}

void
forkret(void)
{

  release(&tasklist.lock);
}

void scheduler(void)
{
        //sys_printk("scheduler:\n");
        struct task_struct *t=nowtask;
        //任务锁
        acquire(&tasklist.lock);
        //下一个任务
        nowtask=nowtask->next1;
        //切换下一个进程的页表
        switchuvm(nowtask);
        //设置为运行态
        nowtask->proc.state=RUNNING;
        //切换任务进入下一个程序
        //swtch(&(t->proc.context),nowtask->proc.context);
        swtch(&pbufcontext,nowtask->proc.context);
        //切换内核页表
        switchkvm();
        //释放锁
        release(&tasklist.lock);
}

//切换用户页表
void switchuvm(struct task_struct *t)
{
        asm_store_cr3(V2P(t->proc.pgdir));
}

//切换内核页表
void switchkvm()
{
        asm_store_cr3(PAGE_DIR_ADDR);
}
