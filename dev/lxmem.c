#include<malloc.h>
#include<mmu.h>
#include<fs/lxstruct.h>
#include<fs/lxmem.h>

//获取节点空间
void *lxmalloc(int flag)
{
        char* m=NULL;
        switch(flag){
                case LXMEM_F_LNODE:{
                        m=(char*)palloc(LNODE_SIZE/PGSIZE);
                }break;
                case LXMEM_F_BNODE:{
                        m=(char*)palloc(BNODE_SIZE/PGSIZE);
                }break;
        }
        return (void*)m;
}
