#include<int.h>
#include<idt.h>
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
//并行口2中断，声卡 int 0x15
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

/*这里为中断处理函数，所有发生的中断跳转到这里来进行处理*/


/*初始化idt表*/
void init_int()
{
        //异常
        set_idt(0,ABORT_INT_0,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(1,ABORT_INT_1,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(2,ABORT_INT_2,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(3,ABORT_INT_3,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(4,ABORT_INT_4,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(5,ABORT_INT_5,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(6,ABORT_INT_6,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(7,ABORT_INT_7,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(8,ABORT_INT_8,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(9,ABORT_INT_9,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(10,ABORT_INT_10,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(11,ABORT_INT_11,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(12,ABORT_INT_12,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(13,ABORT_INT_13,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(14,ABORT_INT_14,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(15,ABORT_INT_15,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(16,ABORT_INT_16,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(17,ABORT_INT_17,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(18,ABORT_INT_18,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(19,ABORT_INT_19,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);

        //中断
        set_idt(32,INTERRUPT_32,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(33,INTERRUPT_33,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(34,INTERRUPT_34,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(35,INTERRUPT_35,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(36,INTERRUPT_36,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(37,INTERRUPT_37,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(38,INTERRUPT_38,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(39,INTERRUPT_39,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(40,INTERRUPT_40,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(41,INTERRUPT_41,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(42,INTERRUPT_42,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(43,INTERRUPT_43,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(44,INTERRUPT_44,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(45,INTERRUPT_45,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(46,INTERRUPT_46,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
        set_idt(47,INTERRUPT_47,OS_CODE_SEG,INTERRUPT_INT_TYPE,DPL_0,INTERRUPT_EFF);
return;
}

