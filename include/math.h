#pragma once
//计算x中包含y的数量，不足y按照一个y算
#define numbers(x,y) ((x)/(y)+((x)%(y))>0?1:0)

//返回x的y次方
double pow(double x,double y);
unsigned long pow_ulong(unsigned long x,unsigned long y);
unsigned int pow_uint(unsigned int x,unsigned int y);
//返回x的开方
double sqrt(double x);
//返回x开方的倒数
double invsqrt(double x);
//求x是2的多少次方(长整数)，取最大值
int get_2order(unsigned long x);