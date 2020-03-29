#include<memory.h>
#include<sysio.h>
#include<math.h>
#include<mem.h>
#include<gdt.h>
//内存探查子程序
uint32 _take_memory_size()
{//折半查找
        uint32 addr;
        asm(    "mov $0xaa55aa55,%%edi\n\t"
                "mov $0x55aa55aa,%%esi\n\t"
        "mem_loop:\n\t"
                "cmp $0,%%eax\n\t"          //当eax=0，说明找到
                "je take_mem_size_exit\n\t"
                "mov (%%ebx),%%edx\n\t"     //保存该位置的原数据
                "mov %%edi,(%%ebx)\n\t"     //将0xaa55aa55写入
                "xor %%ecx,(%%ebx)\n\t"     //对该位置进行异或操作
                "cmp (%%ebx),%%esi\n\t"     //查看是否以异或为0x55aa55aa
                "je mem_usable\n\t"         //是则说明该内存可用
                "sub %%eax,%%ebx\n\t"       //内存不可用，将ebx向前移动
                "shr $1,%%eax\n\t"          //eax除以2
                "jmp mem_loop\n\t"
        "mem_usable:\n\t"           //内存可用
                "mov %%edx,(%%ebx)\n\t"     //还原ebx指向的内存
                "add %%eax,%%ebx\n\t"       //将ebx向后移动
                "shr $1,%%eax\n\t"          //eax除以2
                "jmp mem_loop\n\t"
        "take_mem_size_exit:\n\t"
        :"=ebx"(addr)
        :"a"(0x80000000),"b"(0xfffffffc),"c"(0xffffffff)
        :"edx","edi","esi");
        return addr;
}

//内存探查程序，返回可用页数
uint32 TakeMemorySize()
{
        uint32 a;
        //首先确定边界是否可读
        __asm__ __volatile__("mov %%eax,(%%ebx)\n\t"
        "xor $0xffffffff,(%%ebx)\n\t"
        "mov (%%ebx),%%eax\n\t"
        :"=a"(a):"a"(0xaa55aa55),"b"(0xfffffffc));
        if(a==0x55aa55aa)return 0x100000000/4096;
        //判断是否为386cpu
        uint32 eflag;
        eflag=asm_load_eflags();
        eflag|=EFLAGS_AC_BIT;//令AC位=1
        asm_store_eflags(eflag);
        eflag=asm_load_eflags();
        if (eflag & EFLAGS_AC_BIT) {//可以修改，说明不是386CPU
                //还原eflags
                eflag&=~EFLAGS_AC_BIT;
                asm_store_eflags(eflag);
                //关闭高速缓存
                uint32 cr0=asm_load_cr0();
                cr0|=CR0_CACHE_DISABLE;
                asm_store_cr0(cr0);
                //探查内存
                a=_take_memory_size();
                //打开高速缓存
                cr0&=~CR0_CACHE_DISABLE;
                asm_store_cr0(cr0);
        }
        a=_take_memory_size();
        return a/4096+1;
}


#define PAGE_P          1       //P属性，页存在标志
#define PAGE_UN_P       0       //该页不可用
#define PAGE_RWR        0       //R/W标志，读/执行
#define PAGE_RWW        2       //R/W标志，读/写/执行
#define PAGE_USS        0       //U/S属性，系统级
#define PAGE_USU        4       //U/S属性，用户级
//初始内核分页
ptr_t init_paging()
{
/*;打开分页模式
;写入页目录，共1024项，每项4字节，每一项表示一页页表。结构如下：
;31                      12 11  9 8 7 6 5 4 3  2   1  0
;------------------------------------------------------------------------------------------------------
;|PageBase                 | AVL |0|0|D|A|0|0|U/S|R/W|P|
;------------------------------------------------------------------------------------------------------
;P：存在位；
;R/W：读写标志；
;U/S：用户特权级；
;A：访问位
;D：脏位，由处理器设定，指示此页是否写入过数据
;AVL：由软件设定
*/
//将所有页表和页目录设置为不存在,此时的页目录和页表指向的虚拟地址与物理地址是一一对应的
        //写入页目录
        __asm__ __volatile__("pagel1:\n\t"
        "mov %%eax,(%%ebx)\n\t"
        "add $4,%%ebx\n\t"      //地址+4
        "add $0x1000,%%eax\n\t"     //令表项的pagebase加1，即基地址
        "loop pagel1\n\t"
        ::"a"(PAGE_LIST_ADDR|PAGE_P|PAGE_RWW|PAGE_USS),"b"(PAGE_LIST_ADDR),"c"(1024)
        );
        //写入页表
        __asm__ __volatile__("pagel2:\n\t"
        "mov %%eax,(%%ebx)\n\t"
        "add $4,%%ebx\n\t"
        "add $0x1000,%%eax\n\t"
        "loop pagel2\n\t"
        ::"a"(PAGE_P|PAGE_USS|PAGE_RWW),"c"(1024*1024)
        :"ebx");
//返回页目录地址
return PAGE_LIST_ADDR;
}

free_mem_list  *_MEM_LIST_FIRST_NODE;
struct mem_list *_MEM_BLOCK_LIST_FIRST_NODE;

//硬盘交换分区初始化程序
/*根据预设的交换分区位置，为分区添加管理链表*/

//从物理内存分配
unsigned long __pmalloc(unsigned long n)
{
        //从_MEM_LIST_FIRST_NODE获得内存链表的第一个节点，以此在链表中寻找可以使用的内存
        free_mem_list *a=_MEM_LIST_FIRST_NODE;
        char find=FALSE;
        while(a){
                if(a->size>n){
                        free_mem_list *b=(free_mem_list*)((char*)a+n*_MEMORY_PAGE_SIZE);
                        b->next=a->next;
                        //b->prev=a->prev;
                        b->size=a->size-n;
                        find=TRUE;
                }
                else if(a->size==n){
                        //直接删除此节点
                        _MEM_LIST_FIRST_NODE=_MEM_LIST_FIRST_NODE->next;
                        find=TRUE;
                }
                if(find){
                        return (unsigned long)a;
                }
                a=a->next;
        }
        return NULL;
}

//从0-4G虚拟地址分配内存
/*方法：首先获取一定大小的物理地址，如果没有物理地址可分配，则在硬盘交换分区获取一块储存空间，将其映射到一个未被当前任务使用的内存上*/
unsigned long __vmalloc(unsigned long n)
{
return NULL;
}

//获取指定数量的空闲页
//gfp_mask：内存域修饰标志，order：分配2^order个页面
unsigned long __get_free_pages(gfp_t gfp_mask, unsigned int order)
{
        unsigned long a=NULL;
        unsigned long n=(unsigned long)pow(2,order);
        switch(gfp_mask){
                case ___GFP_PMEM:{//从物理内存上分配空间，不使用交换分区
                        a=__pmalloc(n);
                }break;
                case ___GFP_VMEM:{//从0-4G的虚拟内存上分配空间
                        a=__vmalloc(n);
                }break;
        }
        return a;
}
//释放从addr开始的2^order个页面
//释放时应当与申请时的内存相同，否则可能会造成内存泄漏或者释放不该释放的内存
void __free_pages(unsigned long addr, unsigned int order)
{
        //将addr加入内存链表
        unsigned long n=(unsigned long)pow(2,order);
        if(_MEM_LIST_FIRST_NODE==NULL){//说明之前内存没有空间了，将此内存块作为第一个节点
                _MEM_LIST_FIRST_NODE=addr;
                _MEM_LIST_FIRST_NODE->size=n;
                _MEM_LIST_FIRST_NODE->next=NULL;
        }
        else{
                ((free_mem_list*)addr)->next=_MEM_LIST_FIRST_NODE->next;
                _MEM_LIST_FIRST_NODE->next=(free_mem_list*)addr;
                ((free_mem_list*)addr)->size=n;
        }
return;
}

/*内存管理
初始化内存链表，将物理内存设置为两部分，将剩余未用的空间加入内存链表
返回第一个节点的地址
*/
char* init_mem()
{
        //__get_free_pages()使用
        _MEM_LIST_FIRST_NODE=__MAM_GFP_START;
        _MEM_LIST_FIRST_NODE->size=_MEMORY_SIZE-__MAM_GFP_START/_MEMORY_PAGE_SIZE;
        _MEM_LIST_FIRST_NODE->next=NULL;
        //使用__get_free_pages()申请一块内存，用来为__kmalloc()初始化空间
        _MEM_BLOCK_LIST_FIRST_NODE=__get_free_pages(___GFP_PMEM,_KMALLOC_INIT_MB_ORDER);//申请2^4=16页作为初始块
        if(_MEM_BLOCK_LIST_FIRST_NODE==NULL)return NULL;
        _MEM_BLOCK_LIST_FIRST_NODE->prev=_MEM_BLOCK_LIST_FIRST_NODE;
        _MEM_BLOCK_LIST_FIRST_NODE->next=_MEM_BLOCK_LIST_FIRST_NODE;
        _MEM_BLOCK_LIST_FIRST_NODE->size=(size_t)pow(2,_KMALLOC_INIT_MB_ORDER);
        _MEM_BLOCK_LIST_FIRST_NODE->sign=_MEM_LIST_SIGN;
        return (char*)INITIALLY_UNUSED_MEMORY_ADDR;
}


//从一块执行的内存区获取内存，可以申请大小超过的内存
/*方法：使用__get_free_pages()获得一块内存，然后在此内存中建立链表，分配指定的内存*/
//使用此函数申请的内存绝对不能越界，否则极可能造成内存泄露，并导致函数工作不正常
void * __kmalloc(size_t size)
{
        //遍历整个链表，查找大于size的内存
        struct mem_list *t=_MEM_BLOCK_LIST_FIRST_NODE->next,*p;
        size_t num=(size/sizeof(ptr_t)+1)*sizeof(ptr_t);//需要申请的大小
        static uint n=0;
        while(t!=_MEM_BLOCK_LIST_FIRST_NODE){
                if(t->size>size && t->type==_MEM_LIST_TYPE_NOTUSE){
                        //p指向申请好的内存块末尾，将剩余的内存重新设置为一个内存链块，加入内存链表
                        p=(struct mem_list *)((char*)t+sizeof(struct mem_list)+num);
                        list_insert(p,t);
                        p->file=NULL;
                        p->line=NULL;
                        p->type=_MEM_LIST_TYPE_NOTUSE;
                        p->size=t->size-num-sizeof(struct mem_list);
                        p->n=0;
                        p->sign=_MEM_LIST_SIGN;
                        t->size=num;
                        t->n=n++;//令申请次数加一
                        t->type=_MEM_LIST_TYPE_USER;
                        return (char*)(++t);
                }
        }
        //现有的内存不足，因此需要重新申请一块内存
        struct mem_list *newmem=(struct mem_list*)__get_free_pages(___GFP_PMEM,_KMALLOC_GET_NUM_ORDER);
        if(newmem==NULL)return NULL;
        list_insert(newmem,t);
        newmem->file=NULL;
        newmem->line=NULL;
        newmem->type=_MEM_LIST_TYPE_NOTUSE;
        newmem->size=(size_t)pow(2,_KMALLOC_GET_NUM_ORDER)-sizeof(struct mem_list);
        newmem->n=0;
        newmem->sign=_MEM_LIST_SIGN;
        return __kmalloc(size);
}

void __kfree(void *addr)
{
        if(addr==NULL)return;
        addr=(struct mem_list*)addr-1;
        ((struct mem_list*)addr)->type=_MEM_LIST_TYPE_NOTUSE;
        ((struct mem_list*)addr)->file=NULL;
        ((struct mem_list*)addr)->line=NULL;
return;
}


//初始化页表
/*方法：由于页表已经在head.asm中初始化，这里将内存中不可用的页设置为不可用*/
void init_page()
{
return;
}