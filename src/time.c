
#include<time.h>
#include<sysio.h>
#include<memory.h>
#include<string.h>
//读取cmos，并将之填充进时间结构
void _read_cmos_time(SYS_TIME_STRUCT * time)
{
        __asm__ __volatile__("xor %%eax,%%eax\n"
        //将要读取的单元写入0x70,然后从0x71读取BSD格式的时间
        //年、月、日、时、分、秒分别对应的单元为9，8，7，4，2，0
//读取0，2，4
"looptime1:\n\t"
        "out %%al,%%dx\n\t"
        "inc %%dx\n\t"          //edx=0x71
        "in %%dx,%%al\n\t"
        "dec %%dx\n\t"          //edx还原为0x70
        "mov %%al,(%%edi)\n\t"
        "inc %%edi\n\t"
        "inc %%ah\n\t"
        "inc %%ah\n\t"
        "mov %%ah,%%al\n\t"
        "loop looptime1\n\t"
//读取7，8，9
        "mov $3,%%ecx\n\t"
        "mov $7,%%eax\n\t"
        "mov %%al,%%ah\n"
"looptime2:\n\t"
        "out %%al,%%dx\n\t"
        "inc %%dx\n\t"
        "in %%dx,%%al\n\t"
        "dec %%dx\n\t"
        "mov %%al,(%%edi)\n\t"
        "inc %%edi\n\t"
        "inc %%ah\n\t"
        "mov %%ah,%%al\n\t"
        "loop looptime2\n\t"
        ::"c"(3),"d"(0x70),"D"(time)
        :"eax");
        return;
}

//时间读取函数
//返回自1970年开始至今的秒数
time_t time(time_t *timer)
{
        SYS_TIME_STRUCT t;//储存读取到的时间
        _read_cmos_time(&t);
        time_t n=mktime(BCD_TO_NUMBER(t.year)+_TIME_BASE_CENTURY_YEAR,
        BCD_TO_NUMBER(t.month),
        BCD_TO_NUMBER(t.day),
        BCD_TO_NUMBER(t.h),
        BCD_TO_NUMBER(t.m),
        BCD_TO_NUMBER(t.s));
        if(timer!=NULL){
                *timer=n;
        }
        return n;
}

#define _DAY_SEC        (3600*24)
#define _YEAR_SEC       (365*_DAY_SEC)
#define _FOUR_YEAR_SEC  (_YEAR_SEC*4+_DAY_SEC)
//1970年1月1日为星期四，因此_BASE_DOW=4
#define _BASE_DOW		4

//闰年月份递增数组
static int _lpdays[] = { 0,31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335, 366 };
//平年月份递增数组
static int _days[] = { 0,31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365 };
//将日历时间（时间戳）转换标准时间，并储存到result中
struct tm* localtime_r(const time_t* timep, struct tm* result)
{
	time_t caltim;
	int islpyr=0;//闰年标志
	struct tm *ptb=result;
	if (result != NULL) {
		memset(result, 0xff, sizeof(struct tm));
	}
	else return NULL;
	if (timep == NULL)return NULL;
	caltim = *timep;
	int* mdays;
	//计算闰年的数量
	int tmptim = (int)(caltim / _FOUR_YEAR_SEC);
	caltim -= ((time_t)tmptim * _FOUR_YEAR_SEC);
	//从1900年开始计算到当前经过的年数，70为1970年
	tmptim = (tmptim * 4) + 70;
	if (caltim >= _YEAR_SEC) {
		tmptim++;
		caltim -= _YEAR_SEC;
		if (caltim >= _YEAR_SEC) {
			tmptim++;
			caltim -= _YEAR_SEC;
			if (caltim >= (_YEAR_SEC + _DAY_SEC)) {
				tmptim++;
				caltim -= (_YEAR_SEC + _DAY_SEC);
			}
			else {//是闰年，修改标志
				islpyr++;
			}
		}
	}
	ptb->tm_year = tmptim;
	ptb->tm_yday = (int)(caltim / _DAY_SEC);//今年经过的天数
	caltim -= (time_t)(ptb->tm_yday) * _DAY_SEC;//今天0点起的秒数
	//如果是闰年使用闰年数组，如果是平年使用平年数组
	if (islpyr) {
		mdays = _lpdays;
	}
	else{
		mdays = _days;
	}
	//计算月份
	for (tmptim = 1; mdays[tmptim] < ptb->tm_yday; tmptim++);
	ptb->tm_mon = --tmptim;//月份范围是0-11，所以需要减1
	ptb->tm_mday = ptb->tm_yday - mdays[tmptim]+1;//天数为1-31，需要加1
	ptb->tm_wday = ((int)(*timep / _DAY_SEC) + _BASE_DOW) % 7;
	ptb->tm_hour = (int)(caltim / 3600);
	caltim -= (time_t)ptb->tm_hour * 3600L;
	ptb->tm_min = (int)(caltim / 60);
	ptb->tm_sec = (int)(caltim - (ptb->tm_min) * 60);
	ptb->tm_isdst = 0;
	//ptb->tm_hour += _TIME_LOCAL_TIME_ZONE;
	return result;
}