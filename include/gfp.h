#pragma once
//内存域修饰标志
typedef unsigned int gfp_t;
//区修饰符
/*
X86物理地址空间布局（32位）
ZONE_DMA: 0-16M
ZONE_NORMAL: 16M-896M
ZONE_HIGHMEM: 896M-4G
*/

//
#define ___GFP_PMEM     0x2     //从物理内存空间自动分配，此项用于申请临时内存区域
#define ___GFP_PAGE     0x3     //为页表申请的内存
#define ___GFP_VMEM      0x4     //从虚拟内存分配，0-4G的虚拟空间，这个空间的一部分可能在内存上，也可能在硬盘的交换分区上
#define ___GFP_KERNEL    0x5    //从内核空间分配，即3G-4G的虚拟地址


//linux下的

#define ___GFP_HIGHMEM       0x02u          //从ZONE_HIGHMEM或ZONE_NORMAL分配

#define ___GFP_DMA32              0x04u         //只在ZONE_DMA32分配，仅64位系统有效

#define ___GFP_DMA           0x01u      //从ZONE_DMA分配

//行为修饰符
#define ___GFP_MOVABLE        0x08u
 
#define ___GFP_RECLAIMABLE      0x10u
 
#define ___GFP_HIGH          0x20u
 
#define ___GFP_IO         0x40u
 
#define ___GFP_FS        0x80u
 
#define ___GFP_WRITE              0x100u
 
#define ___GFP_NOWARN          0x200u
 
#define ___GFP_RETRY_MAYFAIL  0x400u
 
#define ___GFP_NOFAIL             0x800u
 
#define ___GFP_NORETRY         0x1000u
 
#define ___GFP_MEMALLOC           0x2000u
 
#define ___GFP_COMP         0x4000u
 
#define ___GFP_ZERO          0x8000u
 
#define ___GFP_NOMEMALLOC      0x10000u
 
#define ___GFP_HARDWALL            0x20000u
 
#define ___GFP_THISNODE              0x40000u
 
#define ___GFP_ATOMIC            0x80000u
 
#define ___GFP_ACCOUNT        0x100000u
 
#define ___GFP_DIRECT_RECLAIM       0x200000u
 
#define ___GFP_KSWAPD_RECLAIM      0x400000u