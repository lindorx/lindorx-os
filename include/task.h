#pragma once
#include<gdt.h>
#include<ldt.h>
#include<proc.h>
//32位TSS段结构
struct TSS32
{
    int backlink, esp0, ss0, esp1, ss1, esp2, ss2, cr3;
    int eip, eflags, eax, ecx, edx, ebx, esp, ebp, esi, edi;
    int es, cs, ss, ds, fs, gs;
    int ldtr, iomap;
};
#define DA_386TSS   (_GDT_TSS_TYPE_NO_BUSY|0x80|0x400)    //GDT表tss描述符属性
#define INDEX_TSS   4   //TSS的段描述符在GDT表的位置
#define SELECTOR_TSS    (INDEX_TSS<<3)
extern struct TSS32 tss;//tss段

//进程链
#define TASK_LDT_SZIE 2
struct task_struct{
  struct task_struct *next1;//一级链，保存可执行进程
  struct task_struct *prev1;
  struct task_struct *next2;//二级链，保存所有进程
  struct task_struct *prev2;
  struct proc proc;//进程结构

  ldt_t ldt[TASK_LDT_SZIE];//此任务的局部描述表
  seg_s ldts;//此ldt表在gdt的段选择子
  uint32 ldtsz;//ldt表项数量
};

struct task_list{
        struct spinlock lock;
        struct task_struct* task;//task指向一个task链节点
};
extern struct task_list tasklist;

//初始化多任务
void init_tss(void);
//获取一个pid
pid_t _get_pid();

//进程链表，每一个建立的进程都要加入此链表
//在task.c定义
extern struct task_struct *task;
extern struct task_struct *nowtask;//当前任务

//在这里进入第一个任务
int init_task();

//获取一个任务空间
struct task_struct *alloctask();
void freetask(struct task_struct* t);

void trapret();

//此程序将会从内核切换到第一个进程
void restart();

void swtch(struct context **old, struct context *new);

//
pid_t fork();

//当前任务
struct task_struct *mytask();

int init_utask();