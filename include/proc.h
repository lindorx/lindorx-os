
#pragma once
#include<macro.h>
#include<memory.h>
#include<gdt.h>
#include<page.h>
#include<ldt.h>
#include<spinlock.h>
//进程状态
enum procstate { UNUSED, EMBRYO, SLEEPING, RUNNABLE, RUNNING, ZOMBIE };

//由硬件和(或)程序在堆栈上构建的trap frame的布局，并传递给trap()。
struct trapframe {
  // 由pusha指令保存的寄存器
  uint edi;
  uint esi;
  uint ebp;
  uint oesp;      // 不使用
  uint ebx;
  uint edx;
  uint ecx;
  uint eax;

  //其他trapframe
  ushort gs;
  ushort padding1;
  ushort fs;
  ushort padding2;
  ushort es;
  ushort padding3;
  ushort ds;
  ushort padding4;
  uint trapno;

  // 下面是由x86硬件定义的
  uint err;
  uint eip;
  ushort cs;
  ushort padding5;
  uint eflags;

  // 
  uint esp;
  ushort ss;
  ushort padding6;
};

//这个结构用来保存每个进程被更新的寄存器值
struct context {
//寄存器
  uint edi;
  uint esi;
  uint ebx;
  uint ebp;
  uint eip;
};

struct task_struct;

//每个进程的状态
struct proc {
  uint sz;                     // 进程内存大小
  pte_t* pgdir;                // 页表地址，用于加载cr3
  char *kstack;                // 这个进程在内核的底栈
  enum procstate state;        // 进程状态
  pid_t pid;                     // 进程ID
  struct task_struct *parent;         // 父进程
  struct trapframe *tf;        // 用于当前进程的trap frame
  struct context *context;     // swtch()在此切换进程
  void *chan;                  // 如果是非零就睡眠
  int killed;                  // 如果是非零，则已被杀死
  //struct file *ofile[NOFILE];  // 打开文件
  //struct inode *cwd;           // 当前目录
  char name[16];                 // 进程名称（调试使用）
};


//测试------------------------------------------------------

/*typedef unsigned int t_32;
typedef unsigned short t_16;

typedef struct s_stackframe{
  t_32 gs;
  t_32 fs;
  t_32 es;
  t_32 ds;
  t_32 edi;
  t_32 esi;
  t_32 ebp;
  t_32 kernel_esp;
  t_32 ebx;
  t_32 edx;
  t_32 ecx;
  t_32 eax;
  t_32 retaddr;
  t_32 eip;
  t_32 cs;
  t_32 eflags;
  t_32 esp;
  t_32 ss;
}STACK_FRAME;

#define LDT_SIZE 2
//进程结构
typedef struct s_proc{
  STACK_FRAME regs;
  t_16 ldt_sel;
  ldt_t ldts[LDT_SIZE];
  size_t ldtsz;//记录ldt的数量
  t_32 pid;
  char p_name[16];
}PROCESS;

#define P_STACKBASE 0
#define GSREG (P_STACKBASE+4)
#define FSREG (GSREG+4)

#define P_STACKTOP 72
#define P_LDT_SEL 72
#define p_LDT 76
*/

//将可运行的a任务加入一级链表
#define task_run_insert(a) do{  \
  (a)->prev1=(task);         \
  (a)->next1=(task)->next1;  \
  (task)->next1->prev1=(a);  \
  (task)->next1=(a); \
}while(0) 

//将不可运行的a任务加入二级链
#define task_notrun_insert(a) do{  \
  (a)->prev2=(task);         \
  (a)->next2=(task)->next2;  \
  (task)->next2->prev2=(a);  \
  (task)->next2=(a); \
}while(0) 



pid_t sys_fork(void);
void forkret(void);
void scheduler(void);

void switchkvm();
void switchuvm(struct task_struct *t);

void yield();