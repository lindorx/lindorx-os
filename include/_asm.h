#pragma once
/*一些C语言中无法实现的汇编指令*/
/*汇编指令实现*/
#include<macro.h>
#ifndef _ASM_H
#define _ASM_H
#define __asm__ asm
#define __volatile__ volatile

//标志寄存器
#define EFLAGS_AC_BIT 0x00040000        //AC位置位
//cr0控制位
#define CR0_CACHE_DISABLE 0x60000000    //禁止高速缓存

/*hlt指令*/
static inline void asm_cpu_hlt(void)
{
    __asm__ __volatile__("hlt");
}
/*8位读端口指令*/
static inline uint8 asm_inb(uint32 edx)
{
    uint8 al;
    __asm__ __volatile__("in %%dx,%0":"=a"(al):"d"(edx));
    return al;
}
/*16位读端口指令*/
static inline uint16 asm_inw(uint32 edx)
{
    uint16 ax;
    __asm__ __volatile__("in %%dx,%0":"=a"(ax):"d"(edx));
    return ax;
}

//8位端口读指令（edx已赋值）
static inline uint8 asm_inb_edx()
{
    uint8 al;
    __asm__ __volatile__("in %%dx,%0":"=a"(al));
    return al;
}

//16位端口读指令（edx已赋值）
static inline uint16 asm_inw_edx()
{
    uint16 al;
    __asm__ __volatile__("in %%dx,%0":"=a"(al));
    return al;
}

/*8位写端口指令*/
static inline void asm_outb(uint32 edx,uint8 al)
{
    __asm__ __volatile__("out %%al,%%dx"::"a"(al),"dx"(edx));
}
/*16位写端口指令*/
static inline void asm_outw(uint32 edx,uint16 ax)
{
    __asm__ __volatile__("out %%ax,%%dx"::"ax"(ax),"dx"(edx));
}

//int指令
static inline void asm_int(const uint var)
{
    __asm__ __volatile__("int %0"::"N"(var));
}

static inline void asm_nop()
{
	__asm__ __volatile__("nop");
}

static inline void asm_sti()
{
    __asm__ __volatile__("sti");
}

static inline void asm_cli()
{
    __asm__ __volatile__("cli");
}
//获取标志寄存器低8位
static inline uint8 asm_lahf()
{
    uint8 ah;
    __asm__ __volatile__("lahf":"=ah"(ah));
    return ah;
}

static inline void asm_sahf(uint8 ah)
{
    __asm__ __volatile__("sahf"::"ah"(ah));
}

//获取eflags寄存器
static inline uint32 asm_load_eflags()
{
    uint32 a;
    __asm__ __volatile__("pushf\n\t"
    "pop %0\n\t"
    :"=r"(a));
    return a;
}

static inline void asm_store_eflags(uint32 a)
{
    __asm__ __volatile__("push %%eax\n\t"
    "popf\n\t"
    ::"a"(a));
}
//读取cr0寄存器
static inline uint32 asm_load_cr0()
{
    uint32 cr0;
    __asm__ __volatile__("mov %%cr0,%0":"=a"(cr0));
    return cr0;
}

static inline void asm_store_cr0(uint32 cr0)
{
    __asm__ __volatile__("mov %0,%%cr0"::"a"(cr0));
}

static inline uint32 asm_load_cr3()
{
    uint32 cr3;
    __asm__ __volatile__("mov %%cr3,%0":"=a"(cr3));
    return cr3;
}

static inline void asm_store_cr3(uint32 cr3)
{
    __asm__ __volatile__("mov %0,%%cr3"::"a"(cr3));
}

static inline void
asm_stosb(void *addr, int data, int cnt)
{
    __asm__ __volatile__("cld\n\t"
                "rep stosb" :
               "=D" (addr), "=c" (cnt) :
               "0" (addr), "1" (cnt), "a" (data) :
               "memory", "cc");
}
static inline void
asm_insl(int port, void *addr, int cnt)
{
  asm volatile("cld\n\t"
                "rep insl" :
               "=D" (addr), "=c" (cnt) :
               "d" (port), "0" (addr), "1" (cnt) :
               "memory", "cc");
}

static inline void asm_ltr(uint16 ax)
{
    __asm__ __volatile__("ltr %%ax"::"a"(ax));
}
#pragma pack(1)
struct load_struct{
        unsigned short size;
        void *addr;
};
#pragma pack()

static inline void asm_lgdt(unsigned short size, void *gdt)
{
        struct load_struct l;
        l.size=size;
        l.addr=gdt;
    __asm__ __volatile__("lgdt %0"::"m"(l));
}

//获取gdtr寄存器内容
static inline struct load_struct asm_sgdt()
{
    struct load_struct g;
    __asm__ __volatile__("sgdt %0":"=m"(g)::"memory");
    return g;
}

static inline void asm_lidt(unsigned short size,void *idt)
{
        struct load_struct l;
        l.size=size;
        l.addr=idt;
    __asm__ __volatile__("lidt %0"::"m"(l));
}

#endif

