
//本文件用来加载elf格式的内核
//void load_kernel(char *src);
#include<elf32.h>
#include<_asm.h>
typedef unsigned char uchar;
#define SECTSIZE 512
#define _KERNEL_ADDR 0x580000
#define _KERNEL_OFF 64          //内核在硬盘的地址
#define _KERNEL_SIZE 32*SECTSIZE

extern void readseg(uchar*, uint, uint);

unsigned long load_kernel()
{
        Elf32_Ehdr *elf;
        Elf32_Phdr *ph,*eph;
        uchar* pa;
        //void (*entry)(void);
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
        //entry = (void(*)(void))(elf->e_entry);
        //entry();
return (unsigned long)elf->e_entry;
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
  asm_outb(0x1F2, 1);   // count = 1
  asm_outb(0x1F3, offset);
  asm_outb(0x1F4, offset >> 8);
  asm_outb(0x1F5, offset >> 16);
  asm_outb(0x1F6, (offset >> 24) | 0xE0);
  asm_outb(0x1F7, 0x20);  // cmd 0x20 - read sectors

  // Read data.
  waitdisk();
  asm_insl(0x1F0, dst, SECTSIZE/4);
}

// Read 'count' bytes at 'offset' from kernel into physical address 'pa'.
// Might copy more than asked.
void
readseg(uchar* pa, uint count, uint offset)
{
  uchar* epa;
  epa = pa + count;
  // Round down to sector boundary.
  pa -= offset % SECTSIZE;

  // Translate from bytes to sectors; kernel starts at sector 1.
  offset = (offset / SECTSIZE)+_KERNEL_OFF;

  // If this is too slow, we could read lots of sectors at a time.
  // We'd write more to memory than asked, but it doesn't matter --
  // we load in increasing order.
  for(; pa < epa; pa += SECTSIZE, offset++)
    readsect(pa, offset);
}
