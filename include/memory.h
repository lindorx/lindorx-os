#pragma once
#include<macro.h>
#include<_asm.h>
#include<initsi.h>
#include<gfp.h>
#include<errno.h>
#include<idt.h>

//内存页长度
#define MEMORY_PAGE_SIZE 4096
//内存块分界标志，仅为参考
#define MEMORY_SIGN 0xdfdfdfdf

//内存划分
//0-3G属于用户，3-4G属于操作系统
#define _USER_MEM	0
#define _USER_MEM_SIZE	0xc0000000
#define _SYS_MEM	0xc0000000
#define _SYS_MEM_SIZE	0x40000000

#define _KERNEL_START_PAGE	((_SYS_MEM)/(MEMORY_PAGE_SIZE))	//内核起始页
#define	PAGE_KERNEL_LIST	((PAGE_DIR_ADDR)+((_KERNEL_START_PAGE)>>12))	//内核页表在页目录的起始地址
//内存分配表地址0x501000,大小设定为0x600000-0x501000=0xff00=1044480，差4kb就是1M
#define MEMORY_ALLOC_ADDR (PAGE_DIR_ADDR+PAGE_LIST_SIZE)
#define MEMORY_ALLOC_SIZE (KERNEL_ADDR-MEMORY_ALLOC_ADDR)
#define MEMORY_ALLOC_VIRTUAL (0xC0000000+0x1000) 				//显示缓冲区地址偏移0x1000字节

//引导扇区地址
#define BOOTLODER_ADDR 0x7c00

//交换分区定义（Swap）
#define DISK_SWAP_ADDR 0x10000	//交换分区位置
#define DISK_SWAP_SIZE 0x10000	//交换分区大小

//cpuid位置,占用16=0x10字节
#define CPUID_TXT SYSTEM_INFO
//CMOS时间，占用8字节
#define START_CMOS_TIME CPUID_TXT+20

//转存的bootloder，由于0x7c00可能被覆盖，head.asm会将0x7c00之后的512字节放在这里
#define BOOT_INFO SYSTEM_INFO+512

//BCD码转换为数字,BCD码的高4位是十位，低四位是个位
#define BCD_TO_NUMBER(x) (((x)>>4)*10+((x)&0xf))


//文本显示缓冲区
#define TEXT_MODE_ADDR 0xB8000	//显示缓冲区地址
#define TEXT_MODE 0xC0000000	//显示缓冲区虚拟地址
#define TEXT_MODE_SIZE 1024*32 	//显示缓冲区占用大小，32kb

//键盘输入缓冲区
#define KEYIN_BUF 0x600000+KERNEL_SIZE


char initMemory();

//初始化分页
ptr_t init_paging();


//避免这段代码被优化掉
#pragma GCC push_options
#pragma GCC optimize ("O0")
//跳转到指定的绝对地址
static inline void jmp_v(void* addr)
{
	goto *(volatile void*)(addr);//跳转到指定地址
}
#pragma GCC pop_options

//内存探查程序，返回可用页数
uint32 TakeMemorySize();
void * sys_malloc(size_t size);

//初始内存链表地址
#define INIT_MEMORY_LINK_LIST (KERNEL_ADDR+KERNEL_SIZE)
//动态内存头结构
typedef struct{
	uint32 r0;//
	uint32 size;//后面有效内存的长度
	uint32 addr;//该内存的物理地址
	uint32 sign;//标记，0xdfdfdfdf
}memory_head;

typedef struct{
	ptr_t page_addr;//可用内存地址
	uint32 size;//长度
}memory_page_use;

//内存管理链表，每个申请的内存块头部需要放上此链表，
struct mem_list{
	struct mem_list *prev;	//上一个内存块地址
	struct mem_list *next;	//下一个内存块地址
	char *file;//文件名
	int line;//
	uint type;//所有者属性，1代表用户，2代表函数库，0代表未使用
	size_t size;//此内存块的大小
	uint n;//第几次申请
	uint32 sign;//0xfdfdfdfd，释放内存时需要判断此内存是否为
};
#define _MEM_LIST_TYPE_NOTUSE	0	//内存未使用
#define _MEM_LIST_TYPE_USER	1	//被用户占用
#define _MEM_LIST_TYPE_FUN	2	//被库函数占用
#define _MEM_LIST_SIGN		0xfdfdfdfd

//内存链表结构，按页分配
/*原理：此结构放在一页的开头，储存包含本页在内的页数*/
typedef struct free_mem_list{
        struct free_mem_list *next;//指向下一个节点
	//struct free_mem_list *prev;//上一个节点
        unsigned long size;//本节点页数
#ifdef __MULTI_CORE_MODE //如果定义了多核模式，则会在结构中加入锁
        //锁
#endif
}free_mem_list;


//空内存链表首节点
//free_mem_list  *_MEM_LIST_FIRST_NODE;
//释放从addr开始的2^order个页面
//释放时应当与申请时的内存相同，否则可能会造成内存泄漏或者释放不该释放的内存
void __free_pages(void* addr, unsigned int order);
//获取指定数量的空闲页
//gfp_mask：内存域修饰标志，order：分配2^order个页面
unsigned long __get_free_pages(gfp_t gfp_mask, unsigned int order);

//从一块执行的内存区获取内存，可以申请大小超过的内存
/*方法：使用__get_free_pages()获得一块内存，然后在此内存中建立链表，分配指定的内存*/
//使用此函数申请的内存绝对不能越界，否则极可能造成内存泄露，并导致函数工作不正常
void * __kmalloc(size_t size);
#define _KMALLOC_INIT_MB_ORDER		4	//__kmalloc()初始内存块大小=2^_KMALLOC_INIT_MB_ORDER
#define _KMALLOC_GET_NUM_ORDER		4	//__kmalloc()内存分配不足时，每次申请的页数大小
void __kfree(void *addr);
//初始化内存
char* init_mem();

//通过检查页表查询内核之后没有占用的物理内存
char* _get_pmem_start();

//在内核空间获取一页内存
void *kalloc();
void kfree(void *a);
