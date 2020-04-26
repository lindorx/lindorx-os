#include<int.h>
#include<idt.h>
#include<task.h>
#include<syscall.h>
#include<_asm.h>
#include<proc.h>

//idt_t *idt=(idt_t*)P2V(IDT_ADDR);
idt_t idt[IDT_NUM]={0};//idt表
uint idt_size=0;

pid_t fork_pid=0;
//向控制台打印发生的中断号，并使cpu暂停
#define _INT_TEST(int_num) do{  \
        asm volatile("mov $0x10,%eax\n\t"\
        "mov %ax,%ds\n\t");\
        sys_printk("int %d,cs=0x%x,eip=0x%x\n",int_num,frame->cs,frame->eip);\
        asm volatile("cli\n\t"\
                "hlt\n\t");\
}while(0);      \
return

#define _INT_TEST_ABORT(n) do{  \
        asm volatile("mov $0x10,%eax\n\t"\
        "mov %ax,%ds\n\t");\
        sys_printk("int %d,errcode:%d,cs=0x%x,eip=0x%x,eflags=0x%x",n,error_code,frame->cs,frame->eip,frame->eflags);\
        asm volatile("cli\n\t"\
                "hlt\n\t");\
        }while(0);\
        return

/*异常=================================================================*/
//除法指令出错
__attribute__ ((interrupt))//#DE
void div_error(struct interrupt_frame* frame,uword_t error_code)//int 0
{
        _INT_TEST_ABORT(0);
}

//调试异常
__attribute__ ((interrupt))//#DB
void debug_error(struct interrupt_frame* frame,uword_t error_code)//int 1
{
        _INT_TEST_ABORT(1);
}
//不可屏蔽中断(NMI)
__attribute__ ((interrupt))//NO
void nmi_interrupt(struct interrupt_frame* frame,uword_t error_code)//int 2
{
        _INT_TEST_ABORT(2);
}

//软中断（int 3）
__attribute__ ((interrupt))//#BP
void breakpoint_int(struct interrupt_frame* frame,uword_t error_code)//int 3
{
        _INT_TEST_ABORT(3);
}

//发生溢出
__attribute__ ((interrupt))//#OF
void overflow(struct interrupt_frame* frame,uword_t error_code)//int 4
{
        _INT_TEST_ABORT(4);
}

//边界检查(bound指令)
__attribute__ ((interrupt))//#BR
void bound_range(struct interrupt_frame* frame,uword_t error_code)//int 5
{
        _INT_TEST_ABORT(5);
}
//非法指令
__attribute__ ((interrupt))//#UD
void undefined_opcode(struct interrupt_frame* frame,uword_t error_code)//int 6
{
        _INT_TEST_ABORT(6);
}
//设备不可用（没有数学协处理器）
__attribute__ ((interrupt))//#NM
void no_math_cp(struct interrupt_frame* frame,uword_t error_code)//int 7
{
        _INT_TEST_ABORT(7);
}

//双重故障
__attribute__ ((interrupt))//#DF
void double_fault(struct interrupt_frame* frame,uword_t error_code)//int 8
{
        _INT_TEST_ABORT(8);
}

//协处理器段溢出
__attribute__ ((interrupt))
void coprocessor_seg_error(struct interrupt_frame* frame,uword_t error_code)//int 9
{
        _INT_TEST_ABORT(9);
}

//无效TSS
__attribute__ ((interrupt))//#TS
void invalid_tss(struct interrupt_frame* frame,uword_t error_code)//int 0xa
{
        _INT_TEST_ABORT(10);
}

//段不存在
__attribute__ ((interrupt))//#NP
void seg_not_present(struct interrupt_frame* frame,uword_t error_code)//int 0xb
{
        _INT_TEST_ABORT(11);
}

//堆栈段异常
__attribute__ ((interrupt))//#SS
void stack_seg_error(struct interrupt_frame* frame,uword_t error_code)//int 0xc
{
        _INT_TEST_ABORT(12);
}

//通用保护异常
__attribute__ ((interrupt))//#GP
void general_protection(struct interrupt_frame* frame,uword_t error_code)//int 0xd
{
        _INT_TEST_ABORT(13);
}
//页异常
__attribute__ ((interrupt))//#PF
void page_fault(struct interrupt_frame* frame,uword_t error_code)//int 0xe
{
        _INT_TEST_ABORT(14);
}
//15号中断保留，不做处理
void _do_not_use_15(){
        return;
};

//协处理器出错
__attribute__ ((interrupt))//#MF
void math_fault(struct interrupt_frame* frame,uword_t error_code)//int 0x10
{
        _INT_TEST_ABORT(16);
}
//对其检查中断
__attribute__ ((interrupt))//#AC
void align_check(struct interrupt_frame* frame,uword_t error_code)//int 0x11
{
        _INT_TEST_ABORT(17);
}

//机器检查中断
__attribute__ ((interrupt))//#MC
void machine_check(struct interrupt_frame* frame,uword_t error_code)//int 18
{
        _INT_TEST_ABORT(18);
}

//Streaming SIMD Extensions
__attribute__ ((interrupt))//#XF
void streaming_simd_ext(struct interrupt_frame* frame,uword_t error_code)//int 19
{
        _INT_TEST_ABORT(19);
}

/*中断=====================================================*/
//计时器中断（8253芯片） int 0x20
__attribute__ ((interrupt))
void timer_int(struct interrupt_frame* frame)
{

        _INT_TEST(32);
        //scheduler();

}
//键盘中断 int 0x21
__attribute__ ((interrupt))
void key_int(struct interrupt_frame* frame)
{
        _INT_TEST(33);
}
//8259的irq9引脚中断 int 0x22
__attribute__ ((interrupt))
void _irq9(struct interrupt_frame* frame)
{
        _INT_TEST(34);
}
//串行口2中断 int 0x23
__attribute__ ((interrupt))
void com2_int(struct interrupt_frame* frame)
{
        _INT_TEST(35);
}
//串行口1中断 int 0x24
__attribute__ ((interrupt))
void com1_int(struct interrupt_frame* frame)
{
        _INT_TEST(36);
}
//并行口2中断，声卡 int 0x25
__attribute__ ((interrupt))
void lptr2_int(struct interrupt_frame* frame)
{
        _INT_TEST(37);
}
//软驱控制器 int 0x26
__attribute__ ((interrupt))
void fdd_int(struct interrupt_frame* frame)
{
        _INT_TEST(38);
}
//并行口1中断，打印机控制器 int 0x27
__attribute__ ((interrupt))
void lpt1_int(struct interrupt_frame* frame)
{
        _INT_TEST(39);
}
//即时时钟 int 0x28
__attribute__ ((interrupt))
void cmos_alert_int(struct interrupt_frame* frame)
{
        _INT_TEST(40);
}
//与irq2主芯片相连 int 0x29
__attribute__ ((interrupt))
void _irq2(struct interrupt_frame* frame)
{
        _INT_TEST(41);
}
//保留，建议给网卡 int 0x2a
__attribute__ ((interrupt))
void reversed1_int(struct interrupt_frame* frame)
{
        _INT_TEST(42);
}
//保留，建议给APG显卡 int 0x2b
__attribute__ ((interrupt))
void reversed2_int(struct interrupt_frame* frame)
{
        _INT_TEST(43);
}
//鼠标 int 0x2c
__attribute__ ((interrupt))
void ps_2_mouse_int(struct interrupt_frame* frame)
{
        _INT_TEST(44);
}
//协处理器 int 0x2d
__attribute__ ((interrupt))
void fpu_int(struct interrupt_frame* frame)
{
        _INT_TEST(45);
}
//主硬盘传输控制 int 0x2e
__attribute__ ((interrupt))
void primary_ide_int(struct interrupt_frame* frame)
{
        asm volatile("iret");
        //_INT_TEST(46);
}
//从硬盘传输控制 int 0x2f
__attribute__ ((interrupt))
void seccondary_ide_int(struct interrupt_frame* frame)
{
        _INT_TEST(47);
}

static void flushtf(struct trapframe *tf)
{       
        asm volatile("push %%ebp\n\t"
        "mov %%esp,%%ebp\n\t"
        "mov %0,%%esp\n\t"
        "pusha\n\t"
        "push %%gs\n\t"
        "push %%fs\n\t"
        "push %%es\n\t"
        "push %%ds\n\t"
        "add $24,%%esp\n\t"
        "push %%ebp\n\t"
        "push %%ss\n\t"
        "mov %%ebp,%%esp\n\t"
        "pop %%ebp\n\t"
        ::"g"(tf):"memory");
        //asm_cpu_hlt();
}
#pragma GCC push_options
#pragma GCC optimize ("O0")
//系统调用表
int syscall_table(uint n,uint eip,uint cs,uint eflags)
{
        if(n>5)return -1;
        struct task_struct *t=mytask();
        sys_printk("syscall_table:n=%d\n",n);
        sys_printk("syscall_fork:eip=0x%x,cs=0x%x,eflags=0x%x\n",eip,cs,eflags);
        switch(n){
                case syscall_fork:{
                //更新当前进程的trapframe
                
                //flushtf(t->proc.tf);
                t->proc.tf->eip=eip;
                t->proc.tf->cs=cs;
                t->proc.tf->eflags=eflags;
                //调用sys_fork()之前需要保存当前寄存器的所有内容
                return sys_fork();
                }
                break;
                case 0:{
                        for(;;)
                                asm_cpu_hlt();
                }

        }
return -1;
}
#pragma GCC pop_options
//syscallasm.S
extern void syscall(void);

//中断函数表
void * int_fun[INTRE_NUM]={
        div_error,              //0     0x0
        debug_error,            //1     0x1
        nmi_interrupt,          //2     0x2
        breakpoint_int,         //3     0x3
        overflow,               //4     0x4
        bound_range,            //5     0x5
        undefined_opcode,       //6     0x6
        no_math_cp,             //7     0x7
        double_fault,           //8     0x8
        coprocessor_seg_error,  //9     0x9
        invalid_tss,            //10    0xa
        seg_not_present,        //11    0xb
        stack_seg_error,        //12    0xc
        general_protection,     //13    0xd
        page_fault,             //14    0xe
        _do_not_use_15,         //15    0xf
        math_fault ,            //16    0x10
        align_check,            //17    0x11
        machine_check,          //18    0x12
        streaming_simd_ext,     //19    0x13
        NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,
        NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,
//中断
        timer_int,              //32    0x20
        key_int,                //33    0x21
        _irq9,                  //34    0x22
        com2_int,               //35    0x23
        com1_int,               //36    0x24
        lptr2_int,              //37    0x25
        fdd_int,                //38    0x26
        lpt1_int,               //39    0x27
        cmos_alert_int,         //40    0x28
        _irq2,                  //41    0x29
        reversed1_int,          //42    0x2a
        reversed2_int,          //43    0x2b
        ps_2_mouse_int,         //44    0x2c
        fpu_int,                //45    0x2d
        primary_ide_int,        //46    0x2e
        seccondary_ide_int,     //47    0x2f
        NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,
        NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,
        NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,
        NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,
        NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,
        NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,
        NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,
        NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,
        NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,
        NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,
        NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,
        NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,
        NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,NULLPTR,
        NULLPTR,NULLPTR,
        syscall                 //128   0x80
};



/*初始化idt表*/
void init_int()
{
        //异常
        int i;
        for(i=0;i<32;++i){
                set_idt(i,int_fun[i],OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF); 
        }
        //中断
        for(;i<0x80;++i){
                set_idt(i,int_fun[i],OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        }
        //注册系统调用
        set_idt(0x80,int_fun[0x80],OS_CODE_SEG,INTERRUPT_TRAP_TYPE,DPL_0,INTERRUPT_EFF);
        idt_size=INTRE_NUM*sizeof(idt_t)-1;
        asm_lidt(idt_size,idt);
return;
}

//放开指定硬件中断
int open_intn(uint n)
{
        if(n<32 || n>47)
                return -1;
        idt[n].present=1;
}

int close_intn(uint n)
{
        if(n<32 || n>47)
                return -1;
        idt[n].present=0;
}