
#include<sysio.h>
//返回x的y次方
double pow(double x,double y)
{
        double value=1;
        int i=1;
        if(y==0){
                value=1;
        }
        else{
                while(i++<=y){
                        value*=x;
                }
        }
        return value;
}

//返回x的y次方
unsigned long pow_ulong(unsigned long x,unsigned long y)
{
        unsigned long value=1;
        unsigned long n=y;
        while(n--){
                value*=x;
        }
        return value;
}
unsigned int pow_uint(unsigned int x,unsigned int y)
{
        unsigned long v=x;
        while(--y){
                v*=x;
        }
        return v;
}

//返回x的开方
double sqrt(double x)
{
        double xhalf=0.5f*x;
        long i=*(long*)&x;
        i=0x5f375a86-(i>>1);
        x=*(double*)(&i);
        x=x*(1.5f-xhalf*x*x);
        x=x*(1.5f-xhalf*x*x);
        x=x*(1.5f-xhalf*x*x);
return x;
}

//返回x开方的倒数
double invsqrt(double x)
{
        double xhalf=0.5f*x;
        long i=*(long*)&x;
        i=0x5f375a86-(i>>1);
        x=*(double*)&i;
        x=x*(1.5f-xhalf*x*x);
        x=x*(1.5f-xhalf*x*x);
        x=x*(1.5f-xhalf*x*x);
return 1/x;
}

