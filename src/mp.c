#include<cpu.h>
#include<mp.h>
#include<sysio.h>

#define p2v(a) (a)

//比较函数
int
memcmp(const void *v1, const void *v2, uint n)
{
        const uchar *s1, *s2;
        s1 = v1;
        s2 = v2;
        while(n-- > 0){
                if(*s1 != *s2)
                        return *s1 - *s2;
                s1++, s2++;
        }
  return 0;
}

//计算addr开始的len个字节之和
static uchar
sum(uchar *addr, int len)
{
  int i, sum;

  sum = 0;
  for(i=0; i<len; i++)
    sum += addr[i];
  return sum;
}
//mp结构操作，此代码应在实模式下运行

//查找mp结构
/*方法，如果EBDA已经定义，那么在EBDA中查找mp结构
如果EBDA没有定义，在在系统基本内存的最后1K字节中寻找
在BIOS ROM里的0xf0000-0xfffff的地址空间寻找*/
static struct mp *
mpsearch(void)
{
        uchar *bda;
        uint p;
        struct mp *mp;
        bda = (uchar *) p2v(0x400); //将0x400转换成虚拟地址,0x400为BIOS存放检测到的数据（即BDA）的物理地址       
        if((p = ((bda[0x0F]<<8)| bda[0x0E]) << 4)){ //判断ebda是否存在，如果存在，将ebda的起始指针赋给p
                if((mp = mpsearch1(p, 1024)))        //在EDBA的前1024个字节中查找
                        return mp;                           //找到后返回指向mp浮点结构的指针
        } 
        else {                           //如果EDBA未被定义
                p = ((bda[0x14]<<8)|bda[0x13])*1024; //得到系统基本内存的末尾边界地址
                if((mp = mpsearch1(p-1024, 1024)))   //在系统基本内存的最后1K中查找
                        return mp;
        }
return mpsearch1(0xF0000, 0x10000);
}

static struct mp*
mpsearch1(uint a, int len)  
// 从内存地址a开始，长度为len的区域中搜索，返回指向MP浮点结构的指针
{
        uchar *e, *p, *addr;
        addr = p2v(a);
        e = addr+len;//结束地址
        for(p = addr; p < e; p += sizeof(struct mp))//逐个查找
                if(memcmp(p, "_MP_", 4) == 0 && sum(p, sizeof(struct mp)) == 0)
                        return (struct mp*)p;
return 0;
}

//返回mp配置表头的地址
static struct mpconf*
mpconfig(struct mp **pmp)
{
  struct mpconf *conf;
  struct mp *mp;

  if((mp = mpsearch()) == 0 || mp->physaddr == 0)
                           //判断MP浮点结构或者MP配置表头是否存在
    return 0;              //两者中有一个不存在即返回0
sys_printk("mp=0x%x",mp);
  conf = (struct mpconf*) p2v((uint) mp->physaddr);//将mp表头存入conf
  //以下代码为对此地址及结构进行一些合法性判定
  if(memcmp(conf, "PCMP", 4) != 0)
    return 0;
  if(conf->version != 1 && conf->version != 4)
    return 0;
  if(sum((uchar*)conf, conf->length) != 0)
    return 0;
  *pmp = mp;
  return conf;             //返回MP配置表头的虚拟地址
}

struct cpu cpus[NCPU];
int ncpu;//当前cpu数量
struct cpu *bcpu;//主cpu

struct mp *mp;//mp结构
uint *lapic;//lapic为mp表头中的lapic地址

struct mpioapic *ioapic;
uchar ioapicid;

//整理mp结构
void init_mp()
{
        struct mpconf *conf;
        struct mpproc *proc;
        uchar *p,*e;
        bcpu=&(cpus[0]);//主cpu
        if((conf=mpconfig(&mp))==0)//获取配置表头
                return;
        char ismp=1;
        lapic=(uint*)conf->lapicaddr;
        ncpu=0;
        sys_printk("conf=0x%x\n",conf);
        sys_printk("p=0x%x",conf+1);
        for(p=(uchar*)(conf+1),e=(uchar*)conf+conf->length;p<e;){
                switch(*p){
                case MPPROC:    //入口类型为处理器
                        proc=(struct mpproc*)p;
                        if(ncpu!=proc->apicid){
                                sys_printk("init_mp: bcpu=%d apicid=%d\n",ncpu,proc->apicid);
                                ismp=0;
                        }
                        if(proc->flags & MPBOOT)//如果这个cpu启动了，说明为主cpu
                                bcpu=&cpus[ncpu];
                        cpus[ncpu].apicid=ncpu;
                        ncpu++;
                        p+=sizeof(struct mpproc);
                        continue;
                case MPIOAPIC:
                        ioapic=(struct mpioapic*)p;
                        ioapicid=ioapic->apicno;
                        p+=sizeof(struct mpioapic);
                        continue;
                case MPBUS:                        //入口类型为总线
                case MPIOINTR:                   //入口类型为I/O 中断分配
                case MPLINTR:                    //入口类型为逻辑中断分配 
                        p += 8;                      //给p加上此种类型的长度：8
                        continue;                    //继续循环
                default:
                        sys_printk("mpinit: unknown config type %x\n", *p);
                        ismp = 0;
                }
                sys_printk("p=0x%x",p);
        }

}
