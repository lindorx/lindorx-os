#pragma once
#define LXMEM_F_BNODE 1 //内部节点
#define LXMEM_F_LNODE 2 //叶节点
//获取节点空间
void *lxmalloc(int flag);