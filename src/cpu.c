
#include<sysio.h>
#include<_asm.h>
#include<cpu.h>
//#include<lapic.h>

//当前系统中存在的cpu，以下在mp.c中定义
extern struct cpu cpus[NCPU];
extern struct cpu *bcpu;//主cpu
extern int ncpu;

//多核启动
static void mpmain()
{
        /*sys_printk("cpu%d: starting\n",cpu->id);
        idtinit();
        xchg()*/
}

//获取当前工作的cpu
/*
struct cpu* mycpu(void)
{
	int apicid, i;
	if(asm_load_eflags()&FL_IF)
		sys_printk("mycpu called with interrupts enabled\n");
  
  	apicid = lapicid();
  	// APIC IDs are not guaranteed to be contiguous. Maybe we should have
  	// a reverse map, or reserve a register to store &cpus[i].
  	for (i = 0; i < ncpu; ++i) {
    		if (cpus[i].apicid == apicid)
      			return &cpus[i];
  	}
  sys_printk("unknown apicid\n");
  return NULL;
}*/