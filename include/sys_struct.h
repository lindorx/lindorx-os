#pragma once
#include<macro.h>
#include<time.h>
#pragma pack(1)
//分区表DPT
typedef struct DPT {
	uint8 ActParSig;//活动分区标志,0x80代表活动分区
	uint8 StartHead;//开始磁头
	uint16 StartSec : 6;//开始扇区
	uint16 StartCyl : 10;//开始柱面
	uint8 ParType;//分区类型
	uint8 EndHead;//结束磁头
	uint16 EndSec : 6;//结束扇区
	uint16 EndCyl : 10;//结束柱面
	uint32 OffUnit;//偏移单元数
	uint32 NumUnit;//分区总扇区数
}DPT, * _dpt;

//引导扇区结构
//512BYTES
#define BOOTCodeSize (512-64-2-88)
typedef struct BOOTLoder {
	/*0*/	uint8 jmpBOOT[3];			//跳转代码
	/*3*/	char OEM[8];				//此文件系统开发者名字
	/*11*/	uint16 BytePerSec;			//每扇区字节数
	/*13*/	uint8 Unit;					//文件系统的单元,为BytePerSec的倍数,例:若UNIT=8,BytePerSec=512,则文件系统的单位为4kb
	/*14*/	uint16 ResvdSecCnt;			//BOOT记录占用的单元数
	/*16*/	uint8 Resvered0;
	/*17*/	uint16 RootEntCnt;			//根目录文件最大数
	/*19*/	uint16 TotUnit16;			//单元总数
	/*21*/	uint8 Media;				//介质描述符
	/*22*/	uint16 BlockSize;			//每个块占用的单元数,最大为32MB
	/*24*/	uint16 SecPerTrk;			//每个磁道的扇区数
	/*26*/	uint16 NumHeads;			//磁头数
	/*28*/	uint32 HiddSec;				//隐藏单元数
	/*32*/	uint32 TotUnit32;			//如果TotUnit16=0,则由这里给出单元总数
	/*36*/	uint8 DrvNum;				//驱动器号
	/*37*/	uint8 Resvered1;			//保留字节,置空
	/*38*/	uint8 BootSig;				//扩展引导标记,0x29
	/*39*/	uint32 VolID;				//卷序列号
	/*43*/	char VolLab[11];			//卷标
	/*54*/	char FileSysType[8];		//文件系统属性
	/*62*/	uint16 VerNum[2];			//版本号，VerNum[0]为主版本号，VerNum[1]为子版本号
	/*66*/	uint16 BNodeSize;			//内部节点长度(byte)
	/*68*/	uint16 LNodeSize;			//叶节点长度(byte)
	/*70*/	uint32 LogBlockAddr;		//日志块地址，单位：块
	/*74*/	uint32 LBNum;				//一个日志块占用块数
	/*78*/	uint32 InfoBlockAddr;		//信息块地址
	/*82*/	uint32 KernelAdder;		//内核地址
	/*86*/	uint16 KernelSize;		//内核长度，单位：unit
	/*88*/	uint8 boot[BOOTCodeSize];	//boot代码
	/*446*/	DPT dpt[4];					//4个分区表
	/*510*/	uint16 BOOTSign;			//引导扇区标志,0xAA55
}BOOTLoder, * _bootloder;

//系统信息页结构
//将一些信息储存在
typedef struct  {
	char CPU_ID[20];//0-3应为"CPU:"，如果不是，说明此cpu不支持cpuid
	//开机时间
	SYS_TIME_STRUCT uptime;
	//char filesystem[8];//由boot文件写入
	//显示模式信息
	uint32 display_mode;	//当前显示模式
	uint32 char_num;	//总字符行数
	uint32 display_page;	//显示页
	//512字节对齐
	char reserve[512-34];
	//备份的引导扇区
	BOOTLoder bootbk;

	/*char boot_OEM[8];				//此文件系统开发者名字
	uint16 boot_BytePerSec;			//每扇区字节数
	uint8 boot_Unit;					//文件系统的单元,为BytePerSec的倍数,例:若UNIT=8,BytePerSec=512,则文件系统的单位为4kb
	uint16 boot_ResvdSecCnt;			//BOOT记录占用的单元数
	uint16 boot_RootEntCnt;			//根目录文件最大数
	uint16 boot_TotUnit16;			//单元总数
	uint8 boot_Media;				//介质描述符
	uint16 boot_BlockSize;			//每个块占用的单元数,最大为32MB
	uint16 boot_SecPerTrk;			//每个磁道的扇区数
	uint16 boot_NumHeads;			//磁头数
	uint32 boot_HiddSec;				//隐藏单元数
	uint32 boot_TotUnit32;			//如果TotUnit16=0,则由这里给出单元总数
	uint8 boot_DrvNum;				//驱动器号
	uint8 boot_BootSig;				//扩展引导标记,0x29
	uint32 boot_VolID;				//卷序列号
	char boot_VolLab[11];			//卷标
	char boot_FileSysType[8];		//文件系统属性
	uint16 boot_VerNum[2];			//版本号，VerNum[0]为主版本号，VerNum[1]为子版本号
	uint16 boot_BNodeSize;			//内部节点长度(byte)
	uint16 boot_LNodeSize;			//叶节点长度(byte)
	uint32 boot_LogBlockAddr;		//日志块地址，单位：块
	uint32 boot_LBNum;				//一个日志块占用块数
	uint32 boot_InfoBlockAddr;		//信息块地址
	//显示信息
	*/
}system_info;

#pragma pack()