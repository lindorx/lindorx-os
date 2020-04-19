#include<spinlock.h>
//获取锁
void acquire(struct spinlock *lock)
{
        while(lock->locked);
}

//释放锁
void release(struct spinlock *lock)
{
        lock->locked=0;
}
