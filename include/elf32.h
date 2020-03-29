#include"elf-em.h"

typedef int int32_t;
typedef long long int64_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;


//16位类型
typedef uint16_t Elf32_Half;
typedef uint16_t Elf64_Half;

/*32位类型  */
typedef uint32_t Elf32_Word;
typedef	int32_t  Elf32_Sword;
typedef uint32_t Elf64_Word;
typedef	int32_t  Elf64_Sword;

/*64位类型  */
typedef uint64_t Elf32_Xword;
typedef	int64_t  Elf32_Sxword;
typedef uint64_t Elf64_Xword;
typedef	int64_t  Elf64_Sxword;

/* 地址类型 */
typedef uint32_t Elf32_Addr;
typedef uint64_t Elf64_Addr;

/* 偏移量类型  */
typedef uint32_t Elf32_Off;
typedef uint64_t Elf64_Off;

/*  段的索引，16位类型 */
typedef uint16_t Elf32_Section;
typedef uint16_t Elf64_Section;

/*  版本符号类型 */
typedef Elf32_Half Elf32_Versym;
typedef Elf64_Half Elf64_Versym;

#define	PT_NULL		0		/* Program header table entry unused */
#define PT_LOAD		1		/* Loadable program segment */
#define PT_DYNAMIC	2		/* Dynamic linking information */
#define PT_INTERP	3		/* Program interpreter */
#define PT_NOTE		4		/* Auxiliary information */
#define PT_SHLIB	5		/* Reserved */
#define PT_PHDR		6		/* Entry for header table itself */
#define PT_TLS		7		/* Thread-local storage segment */
#define	PT_NUM		8		/* Number of defined types */
#define PT_LOOS		0x60000000	/* Start of OS-specific */
#define PT_GNU_EH_FRAME	0x6474e550	/* GCC .eh_frame_hdr segment */
#define PT_GNU_STACK	0x6474e551	/* Indicates stack executability */
#define PT_GNU_RELRO	0x6474e552	/* Read-only after relocation */
#define PT_LOSUNW	0x6ffffffa
#define PT_SUNWBSS	0x6ffffffa	/* Sun Specific segment */
#define PT_SUNWSTACK	0x6ffffffb	/* Stack segment */
#define PT_HISUNW	0x6fffffff
#define PT_HIOS		0x6fffffff	/* End of OS-specific */
#define PT_LOPROC	0x70000000	/* Start of processor-specific */
#define PT_HIPROC	0x7fffffff	/* End of processor-specific */

#pragma pack(push)
#pragma pack(1)
//elf文件头
/*e_ident:
0:0x70 (DEL)
1:0x45 ('E')
2:0x4c ('L')
3:0x46 ('F')
4:标识elf文件位数，32位=1，64位=2
5:表示字序，小段字序=1，大端字序=2
6:elf版本号，1
7-15:未定义
*/
//ELF文件头，出现在每个ELF文件的开头
#define EI_NIDENT (12)
#define ELF_MAGIC 0x464C457FU
typedef struct {
    uint32_t e_magic;
    unsigned char e_ident[EI_NIDENT];  //16位字符数组标识了该文件的格式等基本信息，一般取值为0x7F,‘ELF’,1,1,1后跟着9个0。
    Elf32_Half e_type;//
    Elf32_Half e_machine;//
    Elf32_Word e_version;//
    Elf32_Addr e_entry;//代码段中程序的入口虚拟地址。
    Elf32_Off e_phoff;//程序头表在elf文件的偏移。
    Elf32_Off e_shoff;//段表在elf文件的偏移。
    Elf32_Word e_flags;//
    Elf32_Half e_ehsize;//elf文件头的大小（52）。
    Elf32_Half e_phentsize;//程序头表项的个数。
    Elf32_Half e_phnum;//程序头表项的个数。
    Elf32_Half e_shentsize;//段表项的大小（40）。
    Elf32_Half e_shnum;//段表项的个数。
    Elf32_Half e_shstrndx;//段表字符串表所在段表中的下标。
}Elf32_Ehdr;

//程序头表
typedef struct
{
  Elf32_Word     p_type;//加载段的类型，这里只关心PT_LOAD类型。
  Elf32_Off      p_offset;//加载段在文件的偏移。
  Elf32_Addr     p_vaddr;//段加载到内存的虚拟地址。
  Elf32_Addr     p_paddr;//段加载到内存的物理地址，一般和p_vaddr相等。
  Elf32_Word     p_filesz;//加载段长度，.bss段为0。
  Elf32_Word     p_memsz;//申请内存中的长度，.bss段大于0。
  Elf32_Word     p_flags;//段标志，只关心PF_X-可执行，PF_R-只读，PF_W-可写。
  Elf32_Word     p_align;//加载段对齐信息，一般为内存对齐大小4K，另外，关于对齐还有一个结论：p_vaddr%p_align=p_offset%p_align。
 } Elf32_Phdr;
 
//elf段表
typedef struct {
    Elf32_Word sh_name;        //section的名字
    Elf32_Word sh_type;        //section类别
    Elf32_Word sh_flags;        //section在进程中执行的特性（读、写）
    Elf32_Addr sh_addr;        //在内存中开始的虚地址
    Elf32_Off sh_offset;        //此section在文件中的偏移
    Elf32_Word sh_size;         //段的大小
    Elf32_Word sh_link;         //重定位表段的使用的符号表的段下标，符号表段使用的字符串表的段下标。
    Elf32_Word sh_info;         //重定位表作用段的段表下标。
    Elf32_Word sh_addralign;    //对齐方式大小，应该能被sh_addr整除,一般是4,对于可执行文件的.text段一般是16。
    Elf32_Word sh_entsize;      //表类型段的项大小，对于符号表和重定位表分别为16和8。
}Elf32_Shdr;

typedef struct
{
  unsigned char	e_ident[EI_NIDENT];	/* Magic number and other info */
  Elf64_Half	e_type;			/* Object file type */
  Elf64_Half	e_machine;		/* Architecture */
  Elf64_Word	e_version;		/* Object file version */
  Elf64_Addr	e_entry;		/* Entry point virtual address */
  Elf64_Off	e_phoff;		/* Program header table file offset */
  Elf64_Off	e_shoff;		/* Section header table file offset */
  Elf64_Word	e_flags;		/* Processor-specific flags */
  Elf64_Half	e_ehsize;		/* ELF header size in bytes */
  Elf64_Half	e_phentsize;		/* Program header table entry size */
  Elf64_Half	e_phnum;		/* Program header table entry count */
  Elf64_Half	e_shentsize;		/* Section header table entry size */
  Elf64_Half	e_shnum;		/* Section header table entry count */
  Elf64_Half	e_shstrndx;		/* Section header string table index */
} Elf64_Ehdr;

//符号表
typedef struct
{
  Elf32_Word    st_name;//符号名在串表的偏移，ELF文件的串标可能有多个，如何确定哪个串表呢？“幸好”前边所述的sh_link记录了关联的符号表段下标，通过这个下标就能访问到对应的符号表的首地址，继而就能解析符号表项的名称字段了。
  Elf32_Addr    st_value;//这个字段有多重含义，静态链接只关心两个方面：1、在重定位文件中，记录符号相对所在段的偏移量（COMMON块中表示对齐属性，这里不考虑）；2、在可执行文件中记录符号的虚拟地址。
  Elf32_Word    st_size;//符号大小，double类型是8字节，0标识未知。
  unsigned char st_info;//低4位标识符号类型：只关心STT_NOTYPE-外部符号、STT_OBJECT-数据、STT_FUNC-函数（STT_SECTION类型忽略不考虑）；高4位标识符号绑定信息:这里只关心STB_GLOBAL类型。
  unsigned char st_other;//未定义。
  Elf32_Half    st_shndx;//符号所在段在段表的下标，若是SHN_UNDEF标识外部符号。
} Elf32_Sym;

//重定位表
typedef struct
{
  Elf32_Word    r_offset;//重定位的位置，记录重定位的字节相对被重定位段的偏移量。
  Elf32_Addr    r_info;//低8位表示冲定位入口类型，其中R_386_32标识绝对地址修正，R_386_PC32标识相对地址修正具体修正方式在后边会详细介绍；高24位标识重定位入口符号在符号表的下标，重定位表引用的符号表在段表的sh_link字段已经给出符号表的段表下标。
} Elf32_Rel;


#pragma pack(pop)
