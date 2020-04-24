//负责初始化initsi.h中的全局变量
#include<initsi.h>
#include<sys_struct.h>
#include<sysio.h>
#include<memory.h>
#include<time.h>
#include<string.h>
#include<elf32.h>
#include<disk.h>
#include<ldt.h>
#include<idt.h>
//这里声明会用到的系统信息，并在test.c定义

/*磁盘相关*/
uint8   _DISK_UNIT=0;             //块占用扇区数，默认为8
uint16  _DISK_BYTEPERSEC=0;       //磁盘扇区占用字节数，默认为512，单位：字节
uint8   _DISK_MEDIA=0;            //磁盘介质
uint32  _DISK_RW_UNIT=0;          //磁盘读写单位，一般为一个扇区，单位：字节
uint32  _DISK_FILESYSTEM_BLOCK=0; //文件系统块占用字节数，单位：字节
uint64  _DISK_TO_BLOCK=0;         //磁盘占用块数量，单位：块

unsigned int _DEV_HARD_DISK_=0;   //当前使用的硬盘

/*内存相关*/
uint32  _MEMORY_SIZE=0;           //内存容量，单位：页
uint32  _MEMORY_PAGE_SIZE=0;      //页长度，单位：字节

/*显示器相关*/
uint32  _DISPLAY_MDOE=0;          //显示模式

/*文本模式*/
uint32  _DISPLAY_TEXT_WIDTH=0;    //行宽度
uint32  _DISPLAY_TEXT_HEIGHT=0;   //可显示行数
uint32  _DISPLAY_TEXT_ADDR=0;     //显示缓冲区地址

/*内核相关*/
mem_block _KERNEL_INFO={0};//内核内存块信息

/*时间*/
uint32 _TIME_LOCAL_TIME_ZONE=0;//时区修正，北京时间为标准时间+8小时
uint32 _TIME_BASE_CENTURY_YEAR=0;//世纪,2000

//tss_struct * init_tss();

void loadelf(void *elfaddr);//加载的elf文件地址
void readseg(char* pa,uint32 count,uint32 offset);
void initsys_info()
{
        
        //读取系统信息页，该页保存了开机时由boot.asm和head.asm写入的信息
        system_info *si=(system_info*)SYSTEM_INFO;
        sys_printk("initsys_info:SYSTEM_INFO=0x%x\n",SYSTEM_INFO);
        //初始磁盘信息
        _DISK_UNIT=si->bootbk.Unit;
        _DISK_BYTEPERSEC=si->bootbk.BytePerSec;
        _DISK_MEDIA=si->bootbk.Media;
        _DISK_RW_UNIT=_DISK_BYTEPERSEC;
        _DISK_FILESYSTEM_BLOCK=_DISK_BYTEPERSEC*_DISK_UNIT;
        _DISK_TO_BLOCK=si->bootbk.TotUnit32;
        
        _DEV_HARD_DISK_=__DEV_MAIN_HD;
        //初始内存信息
        _MEMORY_SIZE=TakeMemorySize();
        _MEMORY_PAGE_SIZE=4096;
        sys_printk("initsys_info():_MEMORY_SIZE=0x%x\n",_MEMORY_SIZE);
        //初始化显示器信息
        _DISPLAY_MDOE=si->display_mode;
        switch(_DISPLAY_MDOE){
                case '3':{//文本80*25模式
                        _DISPLAY_TEXT_WIDTH=80;
                        _DISPLAY_TEXT_HEIGHT=25;
                        _DISPLAY_TEXT_ADDR=0xb8000;
                }break;
                default:{
                        _DISPLAY_TEXT_WIDTH=80;
                        _DISPLAY_TEXT_HEIGHT=25;
                        _DISPLAY_TEXT_ADDR=0xb8000;
                }break;
        }
        //初始化时间
        _TIME_LOCAL_TIME_ZONE=8;
        _TIME_BASE_CENTURY_YEAR=2000;

        //打印boot.asm设置的开机时间
        sys_printk("Hello | boot time : %d/%d/%d %d:%d:%d\n",
        BCD_TO_NUMBER(si->uptime.year)+_TIME_BASE_CENTURY_YEAR,
        BCD_TO_NUMBER(si->uptime.month),
        BCD_TO_NUMBER(si->uptime.day)+1,//天是从0开始算的，因此需要+1
        TIME_NUM2HOURS(BCD_TO_NUMBER(si->uptime.h)+8),  //标准时间+8
        BCD_TO_NUMBER(si->uptime.m),
        BCD_TO_NUMBER(si->uptime.s));

        //初始化内核信息结构
        _KERNEL_INFO.pstart=KERNEL_PADDR;
        _KERNEL_INFO.vstart=KERNEL_ADDR;
        _KERNEL_INFO.pend=KERNEL_PADDR+KERNEL_SIZE;
        _KERNEL_INFO.vend=KERNEL_ADDR+KERNEL_SIZE;
        _KERNEL_INFO.size=KERNEL_SIZE;
return;
}

