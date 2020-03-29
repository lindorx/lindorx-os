#include<sysio.h>
//测试程序

void testa()
{
        int a=0;
        while(1){
                sys_printk("A%d",a++);
                for(int i=0;i<10000;++i){
                        for(int j=0;j<2000;++j){}
                }
        }
        return;
}
