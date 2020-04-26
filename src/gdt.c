#include<gdt.h>
#include<_asm.h>
#include<string.h>
#include<sysio.h>
gdt_t gdt[GDT_INIT_NUM];            //GDT表
uint32 gdt_num=0;       //当前GDT表项的数量

#pragma pack(1)
//GDT加载结构
struct GDT_LOAD{
        uint16 size;
        gdt_t *addr;
};
#pragma pack()
//加载gdt
void load_gdt(gdt_t *gdt,uint32 n)
{
        struct GDT_LOAD g={n*8-1,gdt};
        __asm__ __volatile__("lgdt %0"::"m"(g));
        return;
}
//安装GDT，返回段选择子
uint16 step_up_gdt(uint32 i,    //指定位置
                uint base,	//基地址
		uint limit,	//段限长，
		byte TYPE,	//段属性
                byte S,		//系统段
		byte DPL,	//权限，0～3
		byte P,		//P=1，该段可使用
		byte AVL,	//由软件设定
		byte D_B,	//TYPE设定为代码段，D=1，表示32位程序；TYPE设定为数据段，B=1，最大访问范围4GB，表示为堆栈，B=1，使用esp
		byte G)	//G=0，段限长单位是字节，G=1，单位是4kb
{
        //static int i=3;//指向当前未被设定的gdt位置
        gdt[i].limit0=(uint16)limit;
        gdt[i].limit1=(uint8)(limit>>16);
        gdt[i].base0=(uint16)base;
        gdt[i].base1=(uint8)(base>>=16);
        gdt[i].base2=(uint8)(base>>8);
        gdt[i].TYPE=TYPE;
        gdt[i].DPL=DPL;
        gdt[i].P=P;
        gdt[i].AVL=AVL;
        gdt[i].D_B=D_B;
        gdt[i].G=G;
        gdt[i].S=S;
        gdt[i].L=0;
        i++;
        load_gdt(gdt,i);
        return (uint16)((i-1)<<3);//返回该段的段选择子，权限=0
}

//初始化gdt
//将现在的gdt复制到新地址，并刷新gdtr寄存器
void init_gdt()
{
        //获取当前gdt地址，并复制数据
        struct load_struct g=asm_sgdt();
        memcpy(gdt,g.addr,g.size+1);
        gdt_num=(g.size+1)/sizeof(gdt_t);
        asm_lgdt(g.size,gdt);
        sys_printk("load gdt,addr=0x%x,size=0x%x\n",gdt,g.size);
return;
}