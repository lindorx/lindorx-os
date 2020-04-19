#pragma once
#include<macro.h>
#include<errno.h>
#include<mmu.h>

//内核页表定义,长度4M=0x400000+0x1000=0x401000
#define PAGE_DIR_ADDR	0x100000		//页目录地址
#define PAGE_DIR_VA	(PAGE_DIR_ADDR+KERNEL_SPACE_BASE)
#define PAGE_TABLE_ADDR	0x101000		//页表地址
#define PAGE_TABLE_VA	(PAGE_TABLE_ADDR+KERNEL_SPACE_BASE) //页表虚拟地址

#define PAGE_DIR_SIZE	0x1000			//页目录大小
#define PAGE_TABLE_SIZE 0x400000		//页表大小
#define PAGE_LIST_SIZE	0x401000		//页目录，页表总长
#define PAGE_DIR_NUM	(PG/sizeof(pde_t))	//页目录表项数量
#define PAGE_TABLE_END_VA (PAGE_TABLE_VA+PAGE_TABLE_SIZE)	//页表结束地址

//页目录，页表项结构
struct PAGEITEM{
	union{
		struct{
			uint P:1;		//P：存在位；
	uint R_W:1;		//R/W：读写标志；
	uint U_S:1;		//U/S：用户特权级；
	uint nul1:2;		//空
	uint A:1;		//A：访问位
	uint D:1;		//D：脏位，由处理器设定，指示此页是否写入过数据
	uint nul2:2;		//空
	uint AVL:3;		//AVL：由软件设定
	uint PB:20;		//pagebase：页索引，此结构用作页目录时，指示每一项页表的位置；用作页表时，指示系统中每一页的位置
		};
		struct{
			uint flags:12;
			uint base:20;
		};
		uint n;
	};
	
}__attribute__ ((aligned (1)));
typedef struct PAGEITEM pde_t;  //页目录项结构
typedef struct PAGEITEM pte_t;	//页表项结构

#define _PAGE_P		1	//页存在
#define _PAGE_NP	0	//页不存在
#define _PAGE_RWW	1	//读，写，执行
#define _PAGE_RWR	0	//读，执行
#define _PAGE_USU	1	//用户级
#define _PAGE_USS	0	//系统级

typedef struct PAGEITEM pageitem;


//获得地址对应的页
#define _page_addr2page(a) ((unsigned int)(a)/PGSIZE)
//获取地址对应的页在页表中对应的表项的地址
#define _page_addr2pte(pgtab,a) ((pte_t*)((_page_addr2page(a))*sizeof(pte_t)+(char*)(pgtab)))

//获取页表项对应的页
//参数a：页表项地址
#define _page_pte2page(pgtab,a) ((char*)(((uint)((char*)(a)-pgtab)/sizeof(pte_t))*PGSIZE))

//判断页表项对应的页是否被使用
//参数a：页表项指针
#define _page_pte_isuse(a) ((a)->AVL)
//判断地址对应的页是否被使用
//参数a：地址
#define _page_isuse(a) _page_pte_isuse(_page_addr2pte(a))

//将指定的页表项设置为占用
//参数a:页表项指针
#define _page_pte_setuse(a) (a)->AVL=TRUE
#define _page_pte_setnuse(a) (a)->AVL=FALSE
//将指定地址对应的页设置为占用
//参数a：地址。
#define _page_setuse(a) _page_pte_setocc(_page_addr2pte(a));

#define _PAGE_INUSE 1
#define _PAGE_UNUSE 0
//将若干页的页表设置为已占用
//a：需要设置的起始地址；n：需要设置页数；u：选项
#define _pages_useset(a,n,u) do{				\
			pte_t *p=_page_addr2pte(PAGE_TABLE_VA,a);		\
			pte_t *endp=p+(n);			\
			for(p;p<endp;++p){			\
				p->AVL=(u);			\
			}					\
}while(0)

#define PTXSHIFT        12
#define PDXSHIFT	22

#define _page_pdx(va) (((uint)(va) >> PDXSHIFT) & 0x3FF)	//获取地址对应的页目录项下标
#define _page_ptx(va) (((uint)(va )>> PTXSHIFT) & 0x3FF)	//获取地址对应的页表项下标

//添加内存分配表表项，返回表大小,start:物理起始地址，vsatrt：虚拟起始地址，占用长度，ID
int memoccupy(void *start,void *vstart,uint size,uint ID);

//地址映射函数，
//src：原地址；dst：被映射到的地址；size：映射长度(单位：页4kb)；
//p：0=页不存在，1=页存在；rw：读写属性，1=读-写-执行，0=读-执行；us：1=用户级，0=系统级
void addressMapping(uint32 src,uint32 dst,uint32 size,int p,int rw,int us);

//多页映射
//pp：物理地址；vp：要被映射的虚拟地址。n：映射长度
int mapping_pages(pte_t *pgtab,void *pp,void *vp,uint n);

//将地址转换为页目录项
errno _usr_cpt(void *p);

//在内核空间的页表中寻找可以被映射的地址
char *_kernel_get_mapaddr(uint num);

//初始化页
void init_page();

//设置指定页目录项的读写位
//p：指定项地址，sz：项数；sign：标志，取值 _PAGE_RWW 或 _PAGE_RWR
pde_t *page_set_rw(pde_t *pgdir,uint sz,int sign);

//复制用户页表
/*方法：复制父进程页表*/
pde_t *copyuvm(pde_t * par, uint sz);
