#include<page.h>
#include<gdt.h>
#include<initsi.h>
#include<memory.h>
#include<sysio.h>
#include<string.h>
#include<panic.h>

//多页映射
//pp：物理地址；vp：要被映射的虚拟地址。n：映射页数
int mapping_pages(pte_t *pgtab,void *pp,void *vp,uint n)
{
        //sys_printk("mapping_pages():pp=0x%x,vp=0x%x,n=0x%x\n",pp,vp,n);
        pte_t *vpp=_page_addr2pte(pgtab,vp),*a;
        uint p=_page_addr2page(pp);
        //sys_printk("mapping_pages():vpp=0x%x,p=0x%x,vpp+n=0x%x\n",vpp,p,vpp+n);
        a=vpp+n;
        for(;vpp<a;vpp++){
                vpp->PB=p++;
        }
        //sys_printk("mapping_pages():Run completed.\n");
        return 0;
}

//将pp页映射到vp页
//flag:标志
int mappage(pde_t *pgdir,void *pa,void *va,uint flags)
{
        pde_t *pd=&pgdir[_page_pdx(va)];
        if(!(pd->P))
                return -1;
        pte_t *pgtab=(pd->base)<<12;
        pte_t *pt=&pgtab[_page_ptx(va)];
        pt->base=_page_addr2page(pa);
        pt->flags=flags;
        pt->AVL=1;
        //sys_printk("mappage: pt-AVL=%d\n",pt->AVL);
        return 0;
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
        pde_t *pd=(struct PAGEITEM*)p,*epd=(struct PAGEITEM*)((char*)p+page_dir(_USER_MEM_SIZE));//页目录的大小为一页，4096字节
        pte_t pi={0};
        pi.R_W=1;
        pi.U_S=1;
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
        //sys_printk("_get_mapaddr():n=0x%x,num=%d\n",n,num);
        pte_t *p=_page_addr2pte(PAGE_TABLE_VA,n),*bp=NULL;
        //sys_printk("_get_mapaddr:p=%x,pea=%x\n",p,PAGE_TABLE_END_VA);

        uint i;
        for(;p<(pte_t*)PAGE_TABLE_END_VA;++p){
                //sys_printk("_get_mapaddr():p=0x%x\n",p);
                        //asm_cpu_hlt();
                if(!_page_pte_isuse(p)){//如果此页未被使用
                        //sys_printk("_get_mapaddr():found unuse memory.mem=0x%x\n",p);
                        bp=p++;
                        for(i=1;!_page_pte_isuse(p) && i<num ;++i,++p);
                        if(i<num)continue;
                        return _page_pte2page(PAGE_TABLE_VA,bp);
                }
        }
        //sys_printk("_get_mapaddr() return.\n");
        //如果返回NULL，说明没有找到
        //asm_cpu_hlt();
        return NULL;
}

//在内核空间的页表中寻找可以被映射的地址
//num：需要被映射的页面数量
/*方法：KERNEL_SPACE_BASE内核空间，在这里逐个寻找可用的地址空间*/
char *_kernel_get_mapaddr(uint num)
{
        return _get_mapaddr(KERNEL_ADDR,num);
}

//初始化页表
void init_page()
{
        //将内核之前的内存映射到高地址
        //sys_printk("init_page():mapping page.\n");
        mapping_pages(PAGE_TABLE_ADDR,0,KERNEL_SPACE_BASE,KERNEL_PADDR/PGSIZE);
        //初始化页表，将内核中已经被占用的页设置为已占用
        pte_t *i;
        //sys_printk("init_page():_KERNEL_INFO.vstart=0x%x,_KERNEL_INFO.vend=0x%x\n",_page_addr2pte(PAGE_TABLE_VA,_KERNEL_INFO.vstart),_page_addr2pte(PAGE_TABLE_VA,_KERNEL_INFO.vend));
        //将内核占用的虚拟地址设置为已占用，即0xc0000000-KERNEL_STACK_VBOTADDR;
        for(i=_page_addr2pte(PAGE_TABLE_VA,KERNEL_SPACE_BASE);i<_page_addr2pte(PAGE_TABLE_VA,KERNEL_STACK_VBOTADDR);i++){
                //sys_printk("init_mem():i=0x%x\n",i);
                _page_pte_setuse(i);
        }
        //确保没有使用，将内核空间剩下的页设置为未占用
        for(i;i<(pte_t*)PAGE_TABLE_END_VA;++i){
                _page_pte_setnuse(i);
        }
        //初始化用户空间页
        for(i=_page_addr2pte(PAGE_TABLE_VA,0);i<_page_addr2pte(PAGE_TABLE_VA,KERNEL_SPACE_BASE);++i){
                _page_pte_setnuse(i);
        }
return;
}

//释放页表
void freevm(pde_t *pgdir)
{
        if(pgdir==NULL)
                panic("freevm: no pgdir");
        //释放用户空间占用的内存
        uint i;
        for(i=0;i<1024;i++){
                if(pgdir[i].P && pgdir[i].base!=NULL){
                        char *v=P2V(pgdir[i].base<<12);
                        kfree(v);
                }
        }
        kfree(pgdir);
}

//返回va对应的页目录表项
static pde_t *walkpgdir(pde_t *pgdir,void *va,int alloc)
{
        //sys_printk("walkpgdir:pgdir=0x%x,va=0x%x,alloc=%d\n",pgdir,va,alloc);
        pte_t *pgtab;
        pde_t *pde=&pgdir[_page_pdx(va)];
        //sys_printk("walkpgdir:pde=0x%x,vax=0x%x\n",pde,_page_pdx(va));
        if(pde->P){
                pgtab=(pte_t*)P2V(pde->PB<<12);
                //sys_printk("walkpgdir:pde->P=%d\n",pde->P);
        }
        else{//如果此页不存在，则重新创建一个
                if(!alloc || (pgtab=(pte_t*)kalloc())==NULL)
                        return 0;
                memset(pgtab,0,PGSIZE);
                pde->PB=V2P(pgtab);
                pde->P=_PAGE_P;
                pde->R_W=_PAGE_RWW;
                pde->U_S=_PAGE_USU;
        }
        return pgtab;
}

//复制用户页表
/*方法：复制父进程页表*/
#pragma GCC push_options
#pragma GCC optimize ("O0")

pde_t *copyuvm(pde_t * par, uint sz)
{
        pde_t *pgdir=(pde_t *)kalloc();//子进程的页目录
        //sys_printk("copyuvm:pgdir=0x%x\n",pgdir);
        if(pgdir==NULL)
                panic("copyuvm:No page obtained.");
        memcpy(pgdir,par,PGSIZE);
        //复制页表
        uint i,pa,flags;
        char *mem;
        pte_t *pte;
        for(i=0;i<sz;i+=PGSIZE){
                //获取i对应的页表的值
                if((pte=walkpgdir(pgdir,(void*)i,0))==NULL)
                        panic("copyuvm: pte should exist");
                if(!(pte->P))
                        panic("copyuvm: page not present");
                pa=pte->base;
                flags=pte->flags;
                mem=(char*)kalloc();
                if(mem==NULL)
                        goto bad;
                memcpy(mem,(char*)P2V(pa),PGSIZE);
                //将mem映射到i地址上
                if(mappage(pgdir,(char*)V2P(mem),(char*)i,flags)<0){
                        kfree(mem);
                        goto bad;
                }
        }
        return pgdir;
        bad:
                freevm(pgdir);
                return NULL;
}
#pragma GCC pop_options
//设置指定页目录项的读写位
//p：指定项地址，sz：项数；sign：标志，取值 _PAGE_RWW 或 _PAGE_RWR
pde_t *page_set_rw(pde_t *pgdir,uint sz,int sign)
{
        pde_t *p=pgdir;
        pde_t *ep=pgdir+sz;
        for(;p<ep;++p){
                p->R_W=sign;
        }
        return pgdir;
}

//在用户空间寻找映射页
//返回可以映射的虚拟地址
#pragma GCC push_options
#pragma GCC optimize ("O0")
char *_user_get_mapaddr(pde_t *pgdir,unsigned long n)
{
        //通过页目录项获取尚未分配的表
        pde_t *pd,*epgdir=pgdir+1024-KERNEL_SPACE_PDN;
        pte_t *pt,*bpt,*ebpt,*tpt,*rpt=NULL;
        static int w=0;
        for(pd=pgdir;pd<epgdir;pd++){
                if(pd->P){//如果此项有效，说明指向了一页有效的页表页
                        bpt=((pd->PB)<<12);//指向第一个
                        ebpt=bpt+1024;
                        for(pt=bpt;pt<ebpt;++pt){//循环查找页表项，确定AVL=0的项
                               //if(!_page_pte_isuse(pt)){//如果没有使用，则从此开始查找n个
                               if(!pt->AVL){
                                        rpt=pt++;
                                        for(tpt=pt+n-1;pt<tpt&&pt<ebpt;++pt){
                                                if(_page_pte_isuse(pt))
                                                        goto _ugm_continue_loop;
                                        }
                                        //如果可以执行到这里，说明找打了可用于映射的页
                                return (((uint)(pd-pgdir))/4*1024+((uint)rpt-(uint)(pd->PB<<12))/4)*4096;//返回pt对应的页地址
                                }
                                _ugm_continue_loop:     //继续循环
                                continue;
                        }
                }
        }
        
        return NULL;
}
#pragma GCC pop_options