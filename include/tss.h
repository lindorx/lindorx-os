
//TSS相关参数
//TSS地址
#define TSS_ADDR 0x4000
#pragma pack(1)
#define IO_BITMAP_SIZE 0
typedef struct tss_struct {
	unsigned short back_link,__blh;//下一个TSS段地址
	unsigned long esp0;
	unsigned short ss0,__ss0h;//0级堆栈指针，即Linux中的内核级
	unsigned long esp1;
	unsigned short ss1,__ss1h; //1级堆栈指针，未用
	unsigned long esp2;
	unsigned short ss2,__ss2h; //2级堆栈指针，未用
	unsigned long __cr3;
	unsigned long eip;
	unsigned long eflags;
	unsigned long eax,ecx,edx,ebx;
	unsigned long esp;
	unsigned long ebp;
	unsigned long esi;
	unsigned long edi;
	unsigned short es, __esh;
	unsigned short cs, __csh;
	unsigned short ss, __ssh;
	unsigned short ds, __dsh;
	unsigned short fs, __fsh;
	unsigned short gs, __gsh;
	unsigned short ldt, __ldth;
	unsigned short trace, bitmap;
	unsigned long io_bitmap[IO_BITMAP_SIZE+1];
/*
* pads the TSS to be cacheline-aligned (size is 0x100)
*/
	unsigned long __cacheline_filler[5];
}tss_struct;

//tss段结构，用于切换
typedef struct tss_select{
	uint16 limit0;
	uint16 base0;
	uint8 base1;
	uint8 type:4;
	uint8 s:1;
	uint8 dpl:2;
	uint8 p:1;
	uint8 limit1:4;
	uint8 avl:1;
	uint8 reserve0:1;
	uint8 d_b:1;
	uint8 g:1;
	uint8 base2;
}tss_select;
#pragma pack()