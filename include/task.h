#pragma once
#include<gdt.h>
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

//任务结构，储存任务切换时需要保存的数据
struct task_struct{
    struct trapframe trap;//保存切换时当前程序的信息
    struct context context;//保存上下文
    
};


extern pid_t _current_pid;//当前进程

//初始化多任务
void init_tss(void);
//获取一个pid
pid_t _get_pid();

//进程链表，每一个建立的进程都要加入此链表
//在task.c定义
extern struct task_list *task;

//在这里进入第一个任务
int init_task();

//获取一个任务空间
struct task_list *alloctask();
void freetask(struct task_list* t);

void trapret();
void forkret(void);
//此程序将会从内核切换到第一个进程
void restart();