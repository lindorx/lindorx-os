#include<macro.h>
#include<sysio.h>
//数据复制
void* memcpy(void *destin,void *source,unsigned int n)
{
        sys_printk("memcpy:des=0x%x,src=0x%x,size=0x%x\n",destin,source,n);
        int i,a;
        for(i=0;i<n/sizeof(ptr_t);++i){
                ((ptr_t*)destin)[i]=((ptr_t*)source)[i];
        }
        a=i*sizeof(ptr_t);
        for(i=0;i<n%sizeof(ptr_t);++i){
                ((char*)destin)[a+i]=((char*)source)[a+i];
        }
        return destin;
}
//返回字符串长度，不包含末尾的‘\0’
size_t strlen(char *str)
{
        int i=0;
        while(str[i]!='\0')i++;
        return i;
}

//将指定内存块设置为指定的值
void *memset(void *src,int val,size_t n)
{
        sys_printk("memset:src=0x%x,val=0x%x,size=0x%x\n",src,val,n);
        size_t i;
        val=val+(val<<8)+(val<<16)+(val<<24);
        for(i=0;i<n/sizeof(ptr_t);++i){
                ((ptr_t*)src)[i]=val;
        }
        for(i=0;i<n%sizeof(ptr_t);++i){
                ((char*)src)[i]=(char)val;
        }
        return src;
}

//安全的字符串复制
char * safestrcpy(char *s,const char *t,int n)
{
        char *os;
        os = s;
        if(n <= 0)
                return os;
        while(--n > 0 && (*s++ = *t++) != 0);
        *s = 0;
  return os;
}
