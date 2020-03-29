//返回x的y次幂
double pow(double x,double y)
{
        double n=x;
        while(--y){
                n*=x;
        }
        return n;
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

