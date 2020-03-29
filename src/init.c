//负责初始化init.h中的全局变量
#include<init.h>
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
uint8   _DISK_UNIT;             //块占用扇区数，默认为8
uint16  _DISK_BYTEPERSEC;       //磁盘扇区占用字节数，默认为512，单位：字节
uint8   _DISK_MEDIA;            //磁盘介质
uint32  _DISK_RW_UNIT;          //磁盘读写单位，一般为一个扇区，单位：字节
uint32  _DISK_FILESYSTEM_BLOCK; //文件系统块占用字节数，单位：字节
uint64  _DISK_TO_BLOCK;         //磁盘占用块数量，单位：块

unsigned int _DEV_HARD_DISK_;   //当前使用的硬盘

/*内存相关*/
uint32  _MEMORY_SIZE;           //内存容量，单位：字节
uint32  _MEMORY_PAGE_SIZE;      //页长度，单位：字节

/*显示器相关*/
uint32  _DISPLAY_MDOE;          //显示模式

/*文本模式*/
uint32  _DISPLAY_TEXT_WIDTH;    //行宽度
uint32  _DISPLAY_TEXT_HEIGHT;   //可显示行数
uint32  _DISPLAY_TEXT_ADDR;     //显示缓冲区地址

/*内核相关*/
mem_block _KERNEL_INFO;

/*时间*/
uint32 _TIME_LOCAL_TIME_ZONE;//时区修正，北京时间为标准时间+8小时
uint32 _TIME_BASE_CENTURY_YEAR;//世纪,2000

//tss_struct * init_tss();

//解析elf文件，并将elf文件的地址映射
void loadelf(void *elfaddr);//加载的elf文件地址
void readseg(char* pa,uint32 count,uint32 offset);
void initsys_info()
{
        
        //读取系统信息页，该页保存了开机时由boot.asm和head.asm写入的信息
        system_info *si=(system_info*)SYSTEM_INFO;
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
        sys_printk("Hello|boot time : %d/%d/%d %d:%d:%d\n",
        BCD_TO_NUMBER(si->uptime.year)+_TIME_BASE_CENTURY_YEAR,
        BCD_TO_NUMBER(si->uptime.month),
        BCD_TO_NUMBER(si->uptime.day),
        BCD_TO_NUMBER(si->uptime.h),
        BCD_TO_NUMBER(si->uptime.m),
        BCD_TO_NUMBER(si->uptime.s));

        //初始化内核信息结构
        _KERNEL_INFO.start=0;//从0开始
        _KERNEL_INFO.end=KERNEL_ADDR+KERNEL_SIZE;
        _KERNEL_INFO.size=KERNEL_ADDR+KERNEL_SIZE;
        
        //载入内存管理器，文件管理器，中断管理器，等程序
        


        /*Elf32_Ehdr *elf;
        Elf32_Phdr *ph,*eph;
        void (*entry)(void);
        elf=(Elf32_Ehdr*)0x700000;
        sys_readDisk(elf,128,20,0);
        if(elf->e_magic!=ELF_MAGIC)
                return;
        ph=(Elf32_Phdr*)((char*)elf+elf->e_phoff);
        eph=ph+elf->e_phnum;
        char *pa;
        for(;ph<eph;ph++){
                pa=(char*)ph->p_paddr;
                readseg(pa,ph->p_filesz,ph->p_offset);
                if(ph->p_memsz>ph->p_filesz){
                        stosb(pa+ph->p_filesz,0,ph->p_memsz-ph->p_filesz);
                }
        }
        entry=(void(*)(void))(elf->e_entry);
        entry();*/
        //sys_readDisk(0x600000+32*1024,128,16,0);
        //loadelf(0x600000+32*1024);


        //初始化分页
        //uint32 pla=init_paging();
        //将一些关键地址进行映射
        //addressMapping(0,0,0x501000/0x1000,1,0,0);//只读
        //addressMapping(0x501000,0x501000,(KERNEL_ADDR-0x501000+KERNEL_SIZE)/0x1000+1,1,1,0);//可读可写可执行
        
        //保存页目录地址
        //asm_store_cr3(pla);
        //打开分页模式，将cr0寄存器的最高位置1
        //asm_store_cr0(asm_load_cr0()|0x80000000);
        //sys_printk("paging test\n");
        /*struct tm t;
        time_t tn=time(NULL);
        localtime_r(&tn,&t);
        sys_printk("year=%d\n",t.tm_year+1900);
        sys_printk("mon=%d\n",t.tm_mon);
        sys_printk("mday=%d\n",t.tm_mday);
        sys_printk("hour=%d\n",t.tm_hour);
        sys_printk("min=%d\n",t.tm_min);
        sys_printk("sec=%d\n",t.tm_sec);*/
        //加载文件系统

        //初始化IDT
        
        //初始化任务寄存器，首先初始化TSS段
        //tss_struct*tss= init_tss();
        //安装tss段描述符
        //uint32 tss_sel=step_up_gdt(3,(uint)TSS_ADDR,sizeof(tss_struct),GDT_TYPE_TSS,0,0,1,0,1,0);
        
        //__asm__ __volatile__("ltr %0"::"a"((uint16)tss_sel));
        //__asm__ __volatile__("jmp $0x18,$0");
        //for(;;)asm_cpu_hlt();
return;
}

//第一个程序
void initpro()
{
        sys_printk("init progma start\n");
        for(;;){
                asm_cpu_hlt();
        }
return;
}