#pragma once
//e_type属性
#define ET_REL 1    //可重定位文件，一般位.o文件
#define ET_EXEC 2   //可执行文件
#define ET_DYN 3    //共享目标文件，一般位.so文件
//e_machine属性
#define EM_NONE		0
#define EM_M32    1    //AT&T WE 32100
#define EM_SPARC  2     //SPARC
#define EM_386    3    //Intel 80386
#define EM_68K    4    //Motorola m68k family
#define EM_88K    5    //Motorola m88k family
#define EM_486		6
#define EM_860    7    //Intel 80860
#define EM_MIPS		8     //MIPS R3000 (officially, big-endian only) 
//后面的两个已经不可用了
#define EM_MIPS_RS3_LE	10    //MIPS R3000 little-endian
#define EM_MIPS_RS4_BE	10    //MIPS R4000 big-endian

#define EM_PARISC	15          //HPPA 
#define EM_SPARC32PLUS	18  	// Sun's "v8plus" 
#define EM_PPC		20    	// PowerPC 
#define EM_PPC64	21    	 // PowerPC64 
#define EM_SPU		23    	// Cell BE SPU 
#define EM_SH		42	      // SuperH 
#define EM_SPARCV9	43	  // SPARC v9 64-bit 
#define EM_IA_64	50	    // HP/Intel IA-64 
#define EM_X86_64	62	    // AMD x86-64 
#define EM_S390		22	    // IBM S/390 
#define EM_CRIS		76	    // Axis Communications 32-bit embedded processor
#define EM_V850		87	    // NEC v850
#define EM_M32R		88	    // Renesas M32R
#define EM_H8_300	46    	// Renesas H8/300,300H,H8S
#define EM_MN10300	89    	// Panasonic/MEI MN10300, AM33
#define EM_BLACKFIN     106     // ADI Blackfin Processor
#define EM_FRV		0x5441	    // Fujitsu FR-V
#define EM_AVR32	0x18ad    	// Atmel AVR32
#define EM_ALPHA	0x9026      //根据linux的elf-em.h，这是个临时魔数，未来讨论后可能会更换
#define EM_CYGNUS_V850	0x9080  //旧v850魔数，给旧工具
#define EM_CYGNUS_M32R	0x9041  //旧m32r魔数，给旧工具
#define EM_S390_OLD	0xA390      //S/390架构旧中间值
#define EM_CYGNUS_MN10300 0xbeef  //Panasonic/MEI MN10300, AM33
