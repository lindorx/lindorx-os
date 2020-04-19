#pragma once
#include<type.h>
//自旋锁，来自xv6的自旋锁设计，xv6没有区分自旋锁和互斥锁jsq
//互斥锁

#define ISLOCKED 1
#define NOTLOCKED 0
struct spinlock {
  uint locked;       // 锁定
  // 调试：
  char *name;        // 锁名
  struct cpu *cpu;   // 持有锁的cpu
  //uint pcs[10];      // 锁定锁的调用堆栈
};

//互斥锁
struct mutexlock{
  uint locked;  //锁标志，
    // 调试：
  char *name;        // 锁名
  struct cpu *cpu;   // 持有锁的cpu
  //uint pcs[10];      // 锁定锁的调用堆栈
};

//获取锁
void acquire(struct spinlock *lock);

//释放锁
void release(struct spinlock *lock);