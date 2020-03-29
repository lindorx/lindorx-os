#pragma once

#include<macro.h>

#define TEXT_COLOR 0X02
#define TEXT_WIDTH 80
#define TEXT_TAB_WIDTH 8

//颜色
#define TEXT_GREEN 2
#define TEXT_BLACK 0

#define DISK_READ_TEST_NUM 2000 //磁盘读取尝试次数
#define DISK_WRITE_TEST_NUM 2000        //磁盘写入尝试次数
#define DISK_NOT_READ -1        //磁盘读取失败
#define DISK_NOT_WRITE -1       //磁盘写入失败

#define CAL_NUM(x,y) (((x%y>0)?1:0)+x/y)        ////计算x包含y的数量，不足取1

//0x1f1端口错误码
#define DISK_ERCODE_AMNF        0      //找到ID地址，找不到数据地址标记
#define DISK_ERCODE_TKONF       1      //执行“重新校准”命令时找不到磁道0
#define DISK_ERCODE_ABRT        2      //由于驱动器状态错误或者命令无效，命令终止
#define DISK_ERCODE_IDNF        4      //找不到请求的扇区
#define DISK_ERCODE_UNC         6      //遇到无法纠正的数据错误
#define DISK_ERCODE_BBK         7      //在请求的扇区内找到坏块标记
//显示结构
struct TEXT_DISPLPY_CHAR{
        char ch;
        union{
                struct {
                        unsigned char fc:4;//字体颜色
                        unsigned char bc:4;//背景色
                }bfcolor;
                unsigned char color;
        };
}__attribute__ ((aligned (1)));

typedef unsigned int size_t;
uint32 get_cursor();
void put_cursor(uint32 n);
/*
//向终端打印字符串
int sys_printk(const char* str,size_t length,char font_color,char background_color);
//特殊字符处理
//dp：显示缓冲区位置；cursor_pos：光标位置；ch：待输出字符
int put_ctlch(struct TEXT_DISPLPY_CHAR* dp,int cursor_pos,char ch);
//向显示屏打印一个字符
int sys_putchar(int ch,char font_color,char background_color);
//判断str长度
int strlen(const char * str);
//字符串打印
int sys_printf(const char* str, ...);

//读取指定磁盘的扇区
//mem：读取到的内存；secaddr：需要读取的扇区；num：需要读取的扇区数；HDD：主盘=0，从盘=1
int sys_readDisk(void* mem,uint32 secaddr,uint32 num,int HDD);
//向指定磁盘写入数据
//mem：源数据地址；length：数据长度；secaddr：写入扇区；HDD：主盘=0，从盘=1
int sys_writeDisk(void* mem,uint32 length,uint32 secaddr,int HDD);

*/
//格式化输出函数，直接向终端打印字符串
int sys_printk(const char* str,...);
//打印指定数量字符串
int sys_printstr(const char*str,int n,int pos,struct TEXT_DISPLPY_CHAR*dp);
//控制字符处理
//dp：显示缓冲区位置；cursor_pos：光标位置；ch：待输出字符
int put_ctlch(int ch,struct TEXT_DISPLPY_CHAR* dp,int cursor_pos,int width,int height);

//根据数字返回指定的16进制字符
char cntc(unsigned int num);

//将整型转换为字符串，返回字符数
int itoas(int num,char*str,int cardinal);
int uitoas(unsigned int num,char *str,int cardinal);

//读取指定磁盘的扇区
//mem：读取到的内存；secaddr：需要读取的扇区；num：需要读取的扇区数(不能超过256个扇区)；HDD：主盘=0，从盘=1
//返回读取的字节数，至少大于等于512字节，否则即为错误码，磁盘读取出错
int sys_readDisk(void* mem,uint32 secaddr,uint8 num,uint8 HDD);

//向指定磁盘写入数据
//mem：源数据地址；length：数据长度；secaddr：要写入的扇区；HDD：主盘=0，从盘=1
int sys_writeDisk(void* mem,size_t length,uint32 secaddr,uint8 HDD);