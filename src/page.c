#include<page.h>
#include<gdt.h>
#include<init.h>
#include<memory.h>

//地址映射函数
//src：原地址；dst：被映射到的地址；size：映射长度(单位：页4kb)；
//p：0=页不存在，1=页存在；rw：读写属性，1=读-写-执行，0=读-执行；us：使用属性，1=用户级，0=系统级
void addressMapping(uint32 src,uint32 dst,uint32 size,int p,int rw,int us)
{
	//物理地址的高12位指向要修改的表项
	pageitem *pt=(pageitem*)PAGE_TABLE_ADDR;//页表，1024*1024项
	pageitem pageTable={p,rw,us,0,0,0,0,0,src>>12};//页表项
        pt+=(dst>>12);
	int i=0;
	for(i=0;i<size;++i){
		pageTable.PB+=i;
		pt[i]=pageTable;
	}
	return;
}

//将地址转换为页目录项
#define page_dir(a) ((a)/(MEMORY_PAGE_SIZE/sizeof(struct GDTABLE))/(MEMORY_PAGE_SIZE/sizeof(struct GDTABLE)))
//创建用户级页表
//在p位置创建一个空页表，p必须按页对齐；
//创建完成后，p指向创建好的页目录的位置
errno _usr_cpt(void *p)
{
        /*用户页目录页表索引置空，将对应页设置为不可用，高地址的页目录直接复制内的页目录，不用创建页表*/
        if((uint)p % _MEMORY_PAGE_SIZE>0)return NULL;
        //创建用户页目录
        struct PAGEITEM *pd=(struct PAGEITEM*)p,*epd=(struct PAGEITEM*)((char*)p+page_dir(_USER_MEM_SIZE));//页目录的大小为一页，4096字节
        struct PAGEITEM pi={_PAGE_NP,_PAGE_RWW,_PAGE_USU,0,0,0,0,0,NULL};
        for(;pd<epd;pd++){
                *pd=pi;
        }
        //复制内核部分的页目录
        pd=epd;
        epd=(struct PAGEITEM*)((char*)p+0x1000);
        struct PAGEITEM *kpd=(struct PAGEITEM *)PAGE_KERNEL_LIST;//内核页目录地址
        for(;pd<epd;++pd,++kpd){//从内核的页表中复制内核对应的页目录
                *pd=*kpd;
        }
        return NULL;
}

//在页表中寻找可以被映射的地址
//n:起始查询地址。num：需要查找从n开的页对应的页表开始查询，获取一块尚未映射的地址
char *_get_mapaddr(void *n,uint num)
{
        pde_t *p=_page_index_addr(n),*bp;
        uint i=0;
        while(p<PAGE_TABLE_END_ADDR){//循环查找每一个页
                for(bp=p;!_page_pte_isuse(p) && i<num;++i,++p);
                if(i>=num)return _page_pte2page(bp);
                i=0;
        }
        //如果返回NULL，说明没有找到
        return NULL;
}

//在内核空间的页表中寻找可以被映射的地址
/*方法：KERNEL_SPACE_BASE内核空间，在这里逐个寻找可用的地址空间*/
char *_kernel_get_mapaddr()
{
        
}