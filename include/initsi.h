#pragma once
#include<macro.h>

//内存块结构
typedef struct mem_block{
        char *pstart;//该内存块起始地址
        char *vstart;//内存块的虚拟地址
        char *pend;//内存块的结束地址
        char *vend;//内存块结束的虚拟地址
        uint size;//大小，size=start-end;单位：byte
}mem_block;

/*磁盘相关*/
extern uint8   _DISK_UNIT;             //块占用扇区数，默认为8或1
extern uint16  _DISK_BYTEPERSEC;       //磁盘扇区占用字节数，默认为512，单位：字节
extern uint8   _DISK_MEDIA;            //磁盘介质
extern uint32  _DISK_RW_UNIT;          //磁盘读写单位，一般为一个扇区，单位：字节
extern uint32  _DISK_FILESYSTEM_BLOCK; //文件系统块占用字节数，单位：字节
extern uint64  _DISK_TO_BLOCK;         //磁盘占用块数量，单位：块

/*内存相关*/
extern uint32  _MEMORY_SIZE;           //内存容量，单位：页
extern uint32  _MEMORY_PAGE_SIZE;      //页长度，单位：字节


/*显示器相关*/
extern uint32  _DISPLAY_MDOE;          //显示模式
//文本模式
extern uint32  _DISPLAY_TEXT_WIDTH;    //行宽度
extern uint32  _DISPLAY_TEXT_HEIGHT;   //可显示行数
extern uint32  _DISPLAY_TEXT_ADDR;     //显示缓冲区地址

/*时间*/
extern uint32 _TIME_LOCAL_TIME_ZONE;//时区修正，北京时间为标准时间+8小时
extern uint32 _TIME_BASE_CENTURY_YEAR;//世纪,2000

/*内核相关*/
extern mem_block _KERNEL_INFO;

/*中断相关*/
mem_block _INT;
extern uint32 _INT_START_ADDR;//中断起始地址

void initsys_info();
