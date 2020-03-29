//此文件用于处理应用程序
#include<task.h>


void pushcli(void)
{
        int eflags;
        eflags = asm_load_eflags();
        asm_cli();
        /*if(mycpu()->ncli == 0)
                mycpu()->intena = eflags & FL_IF;*/
        //ycpu()->ncli += 1;
}

void popcli(void)
{
  /*if(readeflags()&FL_IF)
    panic("popcli - interruptible");
  if(--mycpu()->ncli < 0)
    panic("popcli");*/
  //if(mycpu()->ncli == 0 && mycpu()->intena)
    asm_sti();
}

//获取当前工作的进程
struct proc *myproc()
{
        struct proc*p=NULL;
        pushcli();
        popcli();
        return p;
}

/*工作方法：复制当前进程，创建一个子进程并写入进程表*/
//创建一个子进程
pid_t fork(void)
{
        struct proc *np;
        struct proc *curproc=myproc();
        return 0;
}