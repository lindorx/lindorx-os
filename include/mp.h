#include<macro.h>
#pragma pack(push)
#pragma pack(1)
//mp浮点结构
struct mp {             // floating pointer
  uchar signature[4];   // 标志，为"_MP_"时表示此为MP浮点结构
  void *physaddr;       // MP配置表头的物理地址
  uchar length;         // 此MP浮点结构的长度
  uchar specrev;        // [14]
  uchar checksum;       //所有字节之和必须为0
  uchar type;           // MP系统配置类型
  uchar imcrp;
  uchar reserved[3];
};
// Table entry types
#define MPPROC    0x00  //入口类型为处理器
#define MPBUS     0x01  //入口类型为总线
#define MPIOAPIC  0x02  //入口类型为I/O APIC
#define MPIOINTR  0x03  //入口类型为I/O 中断分配
#define MPLINTR   0x04  //入口类型为逻辑中断分配

//mp配置表头
struct mpconf {         // configuration table header
  uchar signature[4];           // 标志为"PCMP"
  ushort length;                // MP配置表的长度
  uchar version;                // [14]
  uchar checksum;               // all bytes must add up to 0
  uchar product[20];            // product id
  uint *oemtable;               // OEM table pointer
  ushort oemlength;             // OEM table length
  ushort entry;                 // 入口数
  uint *lapicaddr;              // local APIC的地址
  ushort xlength;               // extended table length
  uchar xchecksum;              // extended table checksum
  uchar reserved;
};

//cpu入口结构
struct mpproc {         // processor table entry
  uchar type;                 // 入口类型(0)
  uchar apicid;               // local APIC id
  uchar version;              // local APIC verison
  uchar flags;                // CPU flags（CPU启动的标志）
    #define MPBOOT 0x02       // This proc is the bootstrap processor.
  uchar signature[4];         // CPU signature
  uint feature;               // feature flags from CPUID instruction
  uchar reserved[8];
};

//i/o 总线入口结构
struct mpioapic {       // I/O APIC table entry
  uchar type;                 // entry type (2)
  uchar apicno;               // I/O APIC id
  uchar version;              // I/O APIC version
  uchar flags;                // I/O APIC flags
  uint *addr;                 // I/O APIC address
};

//extern uint *lapic;//lapic为mp表头中的lapic地址

#pragma pack(pop)

extern struct mp *mp;//mp结构

static struct mp *mpsearch1(uint a, int len);
static struct mp *mpsearch(void);

void init_mp();