#pragma once
#include<macro.h>


typedef unsigned long time_t;
struct tm {
   int tm_sec;         /* 秒，范围从 0 到 59                */
   int tm_min;         /* 分，范围从 0 到 59                */
   int tm_hour;        /* 小时，范围从 0 到 23                */
   int tm_mday;        /* 一月中的第几天，范围从 1 到 31                    */
   int tm_mon;         /* 月份，范围从 0 到 11                */
   int tm_year;        /* 自 1900 起的年数                */
   int tm_wday;        /* 一周中的第几天，范围从 0 到 6                */
   int tm_yday;        /* 一年中的第几天，范围从 0 到 365                    */
   int tm_isdst;       /* 夏令时                        */    
};
#pragma pack(1)         //1字节对齐
//时间结构
typedef struct  {
	byte s;		//秒
	byte m;		//分
	byte h;		//时
	byte day;		//日
	byte month;		//月
	byte year;		//年
}SYS_TIME_STRUCT;
#pragma pack()

#define TIME_ZONE_OFFSET (-8)      //东八区时区差 8个小时
#define TIME_NUM2HOURS(h) ((h)%24)  //整数转换小时

//计算自1970年以来的秒数（linux代码）,时差已修正
static inline unsigned long  mktime (unsigned int year, unsigned int mon,
    unsigned int day, unsigned int hour,
    unsigned int min, unsigned int sec)
{
    if (0 >= (int) (mon -= 2)){    //1..12 -> 11,12,1..10
         mon += 12;      // 由于有闰日，所以把2月放在最后
         year -= 1;
    }
 
    return (((
             (unsigned long ) (year/4 - year/100 + year/400 + 367*mon/12 + day) +
             year*365 - 719499
          )*24 + hour+TIME_ZONE_OFFSET //小时
       )*60 + min //分钟
    )*60 + sec; //秒
}

//时间读取函数
//返回自1970年开始至今的秒数
time_t time(time_t *timer);
//将日历时间转换标准时间，并储存到result中
struct tm *localtime_r(const time_t *timep, struct tm *result);