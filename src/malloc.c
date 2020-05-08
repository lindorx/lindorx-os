#include<memory.h>
#include<stdio.h>
#include<math.h>
#include<mmu.h>
#include<string.h>


#define MB_NOTUSE       1       //未使用

struct memblock{
        struct memblock *next;
        struct memblock *prev;
        uint n;//页数
        int flag;//标志
        void *sma;//获取时的内存块地址
        int order;//申请时order
        int memflag;//0xdfdfdfdf
};

struct mempages{
        char *m;
        int order;
};

//static struct memblock *main_mb=NULL;//首节点
static struct mempages getmem[512];//保存palloc申请过的内存
static int getmem_i=0;
//获取一定页数的内存
void * palloc(unsigned long n)
{
        int n_order=n>0?get_2order(n):0;
        char *p=(char*)__get_free_pages(___GFP_UMEM,n_order);
        if(p==NULL)
                return NULL;
        getmem[getmem_i].m=p;
        getmem[getmem_i].order=n_order;
        getmem_i++;
        return p;
}
/*void * palloc(unsigned long n)
{
        //首先通过__get_free_pages获取页
        struct memblock *tmb=main_mb;
        int n_order;
        char * p,find=FALSE;
        if(main_mb!=NULL)
                do{
                if(tmb->n>n){//剩下的页可以分配
                                struct memblock *t=tmb;
                                tmb=(struct memblock*)((char*)tmb+n*PGSIZE);
                                tmb->next=t->next;
                                tmb->prev=t->prev;
                                tmb->n=t->n-n;
                                tmb->flag=MB_NOTUSE;
                                tmb->sma=t->sma;
                                tmb->order=t->order;
                                find=TRUE;    
                        }
                        else if(tmb->n==n){//删除此节点
                                tmb->prev->next=tmb->next;
                                tmb->next->prev=tmb->prev;
                                find=TRUE;
                        }
                        if(find){
                                p=(char*)tmb;
                                return p;
                        }
                        tmb=tmb->next;
                }while(tmb!=main_mb);
        //如果执行到这里，说明链表为空或者找不到内存
        n_order=n>0?get_2order(n):0;
        p=(char*)__get_free_pages(___GFP_UMEM,n_order);
        if(p==NULL)
                return NULL;
        getmem[getmem_i++]=p;
        //重新获取的内存中获取指定数量的页
        unsigned long num=pow_ulong(2,n_order);
        if(n==num){
                return p;
        }
        //还有剩下的内存
        tmb=(struct memblock*)(p+n*PGSIZE);
        tmb->n=num-n;
        tmb->flag=MB_NOTUSE;
        tmb->sma=p;
        tmb->order=n_order;
        if(main_mb==NULL){
                main_mb=tmb;
                main_mb->prev=main_mb;
                main_mb->next=main_mb;
        }
        else{
                tmb->next=main_mb->next;
                tmb->prev=main_mb;
                main_mb->next->prev=tmb;
                main_mb->next=tmb;
        }
        return p;
}*/

//释放由pmalloc获取的内存
void freep(void *addr)
{
//在getmem中查找指定内存
        int i,j;
        for(i=0;i<getmem_i;++i){
                if(getmem[i].m==addr){
                        __get_free_pages(getmem[i].m,getmem[i].order);
                        for(j=i;j<getmem_i-1;++j){
                                getmem[j]=getmem[j+1];
                        }
                        getmem_i--;
                }
        }
}


//自动从用户空间获取一块内存
void * malloc(unsigned int size)
{
        char *m;
        m=(char*)palloc(size/PGSIZE>0?(size/PGSIZE+1):1);
        return (void*)m;
}

//释放内存
void free(void * addr)
{
        freep(addr);
}

void *calloc(unsigned int size)
{
        void* m=malloc(size);
        if(m==NULL)
                return m;
        memset(m,0,size);
        return m;
}