#pragma once
#include<macro.h>
#include<proc.h>
#include<gdt.h>
#include<task.h>
#define NSEGS     6

// Eflags register
#define FL_IF           0x00000200      // 中断标志

//cpu结构
struct cpu {
  uchar apicid;                // Local APIC ID
  struct context *scheduler;   // swtch() here to enter scheduler
  struct TSS32 ts;         // Used by x86 to find stack for interrupt
  gdt_t gdt[NSEGS];   // x86 global descriptor table
  volatile uint started;       // Has the CPU started?
  int ncli;                    // Depth of pushcli nesting.
  int intena;                  // Were interrupts enabled before pushcli?
  struct proc *proc;           // The process running on this cpu or null
};

#define NCPU 64        //最大cpu数量
//当前系统中存在的cpu，以下在mp.c中定义
extern struct cpu cpus[NCPU];

extern struct cpu *bcpu;//主cpu

//获取当前工作的cpu
struct cpu* mycpu(void);