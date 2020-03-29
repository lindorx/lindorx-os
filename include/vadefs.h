#pragma once
//不定长参数处理函数
#ifdef _M_ALPHA         //DEC ALPHA（Alpha AXP）架构。一般情况下va_list所定义变量为字符指针。
typedef struct {
char *a0; /*指向第一个主参数的指针*/
int offset; /* 下一个参数的字节偏移量 */
} va_list;
#else
typedef char * va_list;
#endif
//获取类型占用的字节数，int的整数倍
#define _INTSIZEOF(n)   ( (sizeof(n) + sizeof(int) - 1) & ~(sizeof(int) - 1) )
//获取可变参数列表的第一个参数的地址，ap是类型为va_list的指针，v是可变参数最左边的参数
#define va_start(ap,v)  ( ap = (va_list)&v + _INTSIZEOF(v) )
//获取可变参数的当前参数，返回指定类型并将指针指向下一参数，t为类型
#define va_arg(ap,t)    ( *(t *)((ap += _INTSIZEOF(t)) - _INTSIZEOF(t)) )
//VA_END宏，清空va_list可变参数列表
#define va_end(ap)      ( ap = (va_list)0 )