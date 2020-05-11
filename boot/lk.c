
//本文件用来加载elf格式的内核
#include<elf32.h>
#include<_asm.h>

typedef unsigned char uchar;
#define SECTSIZE 512
#define _KERNEL_ADDR 0x580000   //内核elf文件被加载地址
#define _KERNEL_OFF 32          //内核在硬盘的扇区

extern void readseg(uchar*, uint, uint);

char *load_kernel()
{
        Elf32_Ehdr *elf;
        Elf32_Phdr *ph,*eph;
        uchar* pa;
        elf=(Elf32_Ehdr*)_KERNEL_ADDR;
        //加载elf头
        readseg((uchar*)elf, 4096, 0);
        //如果不是elf文件，则返回
        if(elf->e_magic != (uint32_t)ELF_MAGIC)
                return 0;
        //获取程序段表地址
        ph=(Elf32_Phdr*)((uchar*)elf+elf->e_phoff);
        eph=ph+elf->e_phnum;
        for(;ph<eph;ph++){//循环加载每个程序段
                pa=(uchar*)ph->p_paddr;
                readseg(pa, ph->p_filesz, ph->p_offset);
                if(ph->p_memsz > ph->p_filesz)
                        asm_stosb(pa+ph->p_filesz,0,ph->p_memsz - ph->p_filesz);
        }
return (char*)elf->e_entry;//返回内核地址
}

void
waitdisk(void)
{
  while((asm_inb(0x1F7) & 0xC0) != 0x40)
    ;
}

//从硬盘的offset扇区读取一个扇区到dst
void
readsect(void *dst, uint offset)
{
  waitdisk();
  asm_outb(0x1F2, 1);   // count = 1，要读取的扇区数
  asm_outb(0x1F3, (char)(offset&0xff));
  asm_outb(0x1F4, (char)(offset >> 8)&0xff);
  asm_outb(0x1F5, (char)offset >> 16);
  asm_outb(0x1F6, (offset >> 24) | 0xE0);
  asm_outb(0x1F7, 0x20);  // 命令0x20，表示读取扇区
  waitdisk();
  asm_insl(0x1F0, dst, SECTSIZE/4);
}

void
readseg(uchar* pa, uint count, uint offset)
{
  uchar* epa;
  epa = pa + count;
  pa -= offset % SECTSIZE;
  offset = (offset / SECTSIZE)+_KERNEL_OFF;
  static int i=0;
  static int f=0;
  for(; pa < epa; pa += SECTSIZE, offset++){
  	readsect(pa, offset);
  }
}
