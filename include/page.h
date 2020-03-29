#pragma once
#include<macro.h>
#include<errno.h>

//页目录，页表项结构
struct PAGEITEM{
	uint P:1;		//P：存在位；
	uint R_W:1;		//R/W：读写标志；
	uint U_S:1;		//U/S：用户特权级；
	uint nul1:2;		//空
	uint A:1;		//A：访问位
	uint D:1;		//D：脏位，由处理器设定，指示此页是否写入过数据
	uint nul2:2;		//空
	uint AVL:3;		//AVL：由软件设定
	uint PB:20;		//pagebase：页索引，此结构用作页目录时，指示每一项页表的位置；用作页表时，指示系统中每一页的位置
}__attribute__ ((aligned (1)));
typedef struct PAGEITEM pde_t;  //页表项结构
#define _PAGE_P		1	//页存在
#define _PAGE_NP	0	//页不存在
#define _PAGE_RWW	1	//读，写，执行
#define _PAGE_RWR	0	//读，执行
#define _PAGE_USU	1	//用户级
#define _PAGE_USS	0	//系统级

typedef struct PAGEITEM pageitem;

//添加内存分配表表项，返回表大小,start:物理起始地址，vsatrt：虚拟起始地址，占用长度，ID
int memoccupy(void *start,void *vstart,uint size,uint ID);

//地址映射函数，
//src：原地址；dst：被映射到的地址；size：映射长度(单位：页4kb)；
//p：0=页不存在，1=页存在；rw：读写属性，1=读-写-执行，0=读-执行；us：1=用户级，0=系统级
void addressMapping(uint32 src,uint32 dst,uint32 size,int p,int rw,int us);

//将地址转换为页目录项
errno _usr_cpt(void *p);