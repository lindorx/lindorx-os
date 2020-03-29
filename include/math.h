#pragma once
//计算x中包含y的数量，不足y按照一个y算
#define numbers(x,y) ((x)/(y)+((x)%(y))>0?1:0)

//返回x的y次幂
double pow(double x,double y);
//返回x的开方
double sqrt(double x);
//返回x开方的倒数
double invsqrt(double x);
