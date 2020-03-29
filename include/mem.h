#pragma once
//此文件用于设定内存的划分
/*内核使用512m，其中包括内核代码，内核堆栈，以及其他与操作系统有关的代码使用
剩下的用于__get_free_pages函数使用
*/
//memory alloc mode


//以下为物理地址分配
//内核
#define __MAM_KERNEL_START      0                       //起始地址
#define __MAM_KERNEL_SIZE       (512*1024*1024)         //大小，单位：byte

//__get_free_pages()
#define __MAM_GFP_START         __MAM_KERNEL_SIZE       //起始地址
#define __MAM_GFP_SIZE          (3*1024*1024*1024)      //大小，单位：byte
