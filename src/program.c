
#include<_asm.h>
#include<stdio.h>
#include<stdlib.h>

#pragma GCC push_options
#pragma GCC optimize ("O0")
void initpro()
{
        //文件系统测试
        FILE *fget=fopen("test.txt","rb");
        if(fget==NULL){
                return;
        }
        char* buf=(char*)malloc(100);
        fread(buf,100,1,fget);
        printf("%s\n",buf);
        for(;;){
                asm_cpu_hlt();
        }
return;
}

#pragma GCC pop_options