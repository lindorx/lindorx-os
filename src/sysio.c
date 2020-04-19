//此文件为系统标准输入输出文件
//包含磁盘io，显示设备io等
#include<sysio.h>
#include<initsi.h>
#include<vadefs.h>
#include<string.h>

#define __DISPLAY_ADDR 0XB8000
#define __DISPLAY_WIDTH 80
#define __DISPLAY_HEIGHT 25

//读取当前显示屏的光标，适用于80*25的显示样式
uint32 get_cursor()
{
        /*
        首先向0x3d4端口写入0x0e,然后从0x03d5端口读取高8位
        向0x3d4端口写入0x0f，从0x3d5端口读取低8位
        */
        uint16 pos;
        __asm__ __volatile__("out %%al,%%dx\n\t"
                "mov %%esi,%%edx\n\t"
                "in %%dx,%%al\n\t"
                "mov %%al,%%ch\n\t"
                "mov %%ah,%%al\n\t"
                "mov %%edi,%%edx\n\t"
                "out %%al,%%dx\n\t"
                "mov %%esi,%%edx\n\t"
                "in %%dx,%%al\n\t"
                "mov %%al,%%cl\n\t"
        :"=cx"(pos)
        :"d"(0x3d4),"a"(0x0f0e),"D"(0x3d4),"S"(0x3d5)
        );
        return pos;
}

//修改光标位置，适用于80*25显示样式
void put_cursor(uint32 pos)
{
        /*
        向0x3d4端口写入0x0e,然后向0x3d5端口写入高八位
        向0x3d4端口写入0x0f，然后向0x3d5端口写入低8位
        */
        __asm__ __volatile__("out %%al,%%dx\n\t"
        "mov %%esi,%%edx\n\t"
        "mov %%ch,%%al\n\t"
        "out %%al,%%dx\n\t"
        "mov %%ah,%%al\n\t"
        "mov %%edi,%%edx\n\t"
        "out %%al,%%dx\n\t"
        "mov %%esi,%%edx\n\t"
        "mov %%cl,%%al\n\t"
        "out %%al,%%dx\n\t"
        ::"a"(0x0f0e),"c"((uint16)pos),"d"(0x3d4),"D"(0x3d4),"S"(0x3d5)
        );
}

//格式化输出函数，直接向终端打印字符串
int sys_printk(const char* str,...)
{
        //获取光标位置
        int pos=get_cursor();
        //struct TEXT_DISPLPY_CHAR* dp=_DISPLAY_TEXT_ADDR;//字符输出位置
        struct TEXT_DISPLPY_CHAR* dp=__DISPLAY_ADDR;
        int i=0,num;
        va_list va;
        va_start(va,str);
        while(str[i]>7){//在退格之前的字符不做处理
                if(str[i]=='%'){i++;
                        switch(str[i]){
                                case '%':{
                                        dp[pos].ch='%';
                                        dp[pos].color=TEXT_COLOR;
                                        pos++;
                                }break;
                                case 'd':{
                                        char s[20];
                                        num=itoas(va_arg(va,int),s,10);
                                        pos+=sys_printstr(s,num,pos,dp);
                                }break;
                                case 'x':{
                                        char s[20];
                                        num=uitoas(va_arg(va,unsigned int),s,16);
                                        pos+=sys_printstr(s,num,pos,dp);
                                }break;
                                case 'c':{
                                        dp[pos].ch=va_arg(va,char);
                                        dp[pos].color=TEXT_COLOR;
                                        pos++;
                                }break;
                                case 's':{
                                        char *s=va_arg(va,char*);
                                        pos+=sys_printstr(s,strlen(s),pos,dp);
                                }break;
                                case 'l':{
                                        char s[20];
                                        num=itoas(va_arg(va,long),s,10);
                                        pos+=sys_printstr(s,num,pos,dp);
                                }break;
                        }
                        i++;
                }
                else if(str[i]>=0x20){
                        dp[pos].ch=str[i];
                        dp[pos].color=TEXT_COLOR;
                        pos++;
                        i++;
                }
                else{//控制字符处理
                        pos=put_ctlch(str[i++],dp,pos,__DISPLAY_WIDTH,__DISPLAY_HEIGHT);
                }
                
        }
        va_end(va);
        put_cursor(pos);
        return i;
}
//向控制台打印一个字符
int sys_putchar(char ch)
{
        //struct TEXT_DISPLPY_CHAR* dp=_DISPLAY_TEXT_ADDR;
        struct TEXT_DISPLPY_CHAR* dp=__DISPLAY_ADDR;
        int pos=get_cursor();
        dp[pos].color=TEXT_COLOR;
        dp[pos].ch=ch;
        put_cursor(++pos);
        return 0;
}

//打印指定数量字符串
int sys_printstr(const char*str,int n,int pos,struct TEXT_DISPLPY_CHAR*dp)
{
        int i;
        for(i=0;i<n;++i){
                dp[pos].ch=str[i];
                dp[pos].color=TEXT_COLOR;
                pos++;
        }
        return i;
}

//控制字符处理
//dp：显示缓冲区位置；cursor_pos：光标位置；ch：待输出字符
int put_ctlch(int ch,struct TEXT_DISPLPY_CHAR* dp,int cursor_pos,int width,int height)
{
        //sys_printk("pos=%d,width=%d,height=%d",cursor_pos,width,height);
        switch(ch){
                case '\n':{//换行符
                if(cursor_pos>width*(height-1)){//如果此时下标在最后一行，则将下标提前，同时将前面的缓冲区整体移动
                        cursor_pos-=cursor_pos%width;
                        memcpy(dp,dp+width,width*(height-1)*sizeof(struct TEXT_DISPLPY_CHAR));
                        //清空最后一行
                        memset(dp+width*(height-1),0,width*sizeof(struct TEXT_DISPLPY_CHAR));
                }
                else cursor_pos=(cursor_pos-cursor_pos%width)+width;
                }break;
        }
        return cursor_pos;
}

//根据数字返回指定的16进制字符
char cntc(unsigned int num)
{
	if (num > 0xf)return 0;
	if (num < 10) {
		return num + '0';
	}
	return num + 'a'-10;
}

//将整型转换为字符串，返回字符数
int itoas(int num,char*str,int cardinal)
{
        char s[20];
        int i=0;
        unsigned int n=num;
        if(num<0){
                str[0]='-';
                str++;
        }
        do{
                s[i++]=cntc(n%cardinal);
                n/=cardinal;
        }while(n>0);
        num=i;
	for(n=0;n<num;++n){
                str[n]=s[--i];
        }
        str[n]='\0';
	return n;
}

int uitoas(unsigned int num,char *str,int cardinal)
{
        char s[20];
        int i=0;
        do{
                s[i++]=cntc(num%cardinal);
                num/=cardinal;
        }while(num>0);
        num=i;
        for(int j=0;j<num;++j){
                str[j]=s[--i];
        }
        str[num]='\0';
        return num;
}

//输出一行字符串
/*size_t sys_printl(const char* str,...)
{
        
}
*/
//磁盘操作

//读取指定磁盘的扇区
//mem：读取到的内存；secaddr：需要读取的扇区；num：需要读取的扇区数(不能超过256个扇区)；HDD：主盘=0，从盘=1
//返回读取的字节数，至少大于等于512字节，否则即为错误码，磁盘读取出错
int sys_readDisk(void* mem,uint32 secaddr,uint8 num,uint8 HDD)
{
 uint32 errsign,errcode,endaddr;      
        __asm__ __volatile__("or $0xe0,%%esi\n\t"//bit5-bit7=111为LBA模式，bit4=0：主硬盘，bit4=0,从盘
        //检测磁盘状态，读取0x1f7,将bit1强制为1，保证磁盘在运行中
        "in %%dx,%%al\n\t"
        "or $0x02,%%al\n\t"
        "out %%al,%%dx\n\t"
        //向0x1f2写入待读取扇区数
        "mov $0x1f2,%%dx\n\t"
        "mov %%cl,%%al\n\t"
        "out %%al,%%dx\n\t"
        //依次向0x1f3-0x1f5按照从低到高写入要读取的扇区
        "inc %%dx\n\t"      //0x1f3
        "mov %%bl,%%al\n\t"
        "out %%al,%%dx\n\t"
        "inc %%dx\n\t"      //0x1f4
        "mov %%bh,%%al\n\t"
        "out %%al,%%dx\n\t"
        "inc %%dx\n\t"      //0x1f5
        "shr $16,%%ebx\n\t"
        "mov %%bl,%%al\n\t"
        "out %%al,%%dx\n\t"
        "inc %%dx\n\t"      //0x1f6
        "mov %%bh,%%al\n\t"
        "and $0x0f,%%al\n\t"
        "or %%esi,%%eax\n\t"
        "out %%al,%%dx\n\t"
        //向0x1f7写入0x20，开始读取磁盘
        "inc %%dx\n\t"
        "mov $0x20,%%al\n\t"
        "out %%al,%%dx\n"
        //反复读取0x1f7端口，当bit7=0，bit3=1，代表磁盘驱动器已经准备好了数据，等待读取
"rloop1f7:\n\t"
        "in %%dx,%%al\n\t"
        "mov %%al,%%ah\n\t"
        "and $0x01,%%al\n\t"        //如果bit0=1代表发生错误
        "cmp $0x01,%%al\n\t"
        "jz rerror\n\t"
        "and $0x88,%%ah\n\t"
        "cmp $0x08,%%ah\n\t"
        "jnz rloop1f7\n\t"
        //从0x1f0端口读取数据
        "mov $0x1f0,%%dx\n\t"
        "shl $8,%%ecx\n"          //ecx储存了读取的扇区数，然后乘以256，等于要读取的字（2字节）数量
"rloopread:\n\t"
        "in %%dx,%%ax\n\t"
        "mov %%ax,(%%edi)\n\t"
        "inc %%edi\n\t"
        "inc %%edi\n\t"
        "loop rloopread\n\t"
        "jmp rexitread\n"
        //检测到磁盘故障，读取错误码
"rerror:\n\t"
        "mov $0xdfdfdfdf,%%ecx\n\t"//读取错误的话将ecx设置为0xdfdfdfdf
        "mov $0x1f1,%%dx\n\t"
        "in %%dx,%%al\n"
"rexitread:\n\t"
        :"=c"(errsign),"=a"(errcode),"=D"(endaddr)
        :"d"(0x1f7),"c"(num&0xff),"b"(secaddr),"S"((HDD&0x01)<<4),"D"((uint32)mem)
        );
        if(errsign==0xdfdfdfdf)return errcode;
        return endaddr-(uint32)mem;
}
//向指定磁盘写入数据
//mem：源数据地址；length：数据长度；secaddr：要写入的扇区；HDD：主盘=0，从盘=1
int sys_writeDisk(void* mem,size_t length,uint32 secaddr,uint8 HDD)
{
        uint32 errsign,errcode;
        uint32 num=((length%512>0)?1:0)+length/512;
        __asm__ __volatile__("or $0xe0,%%esi\n\t"//bit5-bit7=111为LBA模式，bit4=0：主硬盘，bit4=0,从盘
        //检测磁盘状态，读取0x1f7,将bit1强制为1，保证磁盘在运行中
        "in %%dx,%%al\n\t"
        "or $0x02,%%al\n\t"
        "out %%al,%%dx\n\t"
        //向0x1f2写入待读取扇区数
        "mov $0x1f2,%%dx\n\t"
        "mov %%cl,%%al\n\t"
        "out %%al,%%dx\n\t"
        //依次向0x1f3-0x1f5按照从低到高写入要写入的扇区
        "inc %%dx\n\t"      //0x1f3
        "mov %%bl,%%al\n\t"
        "out %%al,%%dx\n\t"
        "inc %%dx\n\t"      //0x1f4
        "mov %%bh,%%al\n\t"
        "out %%al,%%dx\n\t"
        "inc %%dx\n\t"      //0x1f5
        "shr $16,%%ebx\n\t"
        "mov %%bl,%%al\n\t"
        "out %%al,%%dx\n\t"
        "inc %%dx\n\t"      //0x1f6
        "mov %%bh,%%al\n\t"
        "and $0x0f,%%al\n\t"
        "or %%esi,%%eax\n\t"
        "out %%al,%%dx\n\t"
        //向磁盘写入0x30，向磁盘写入数据
        "inc %%dx\n\t"
        "mov $0x30,%%al\n\t"
        "out %%al,%%dx\n"
        //反复读取0x1f7端口，当bit7=0，bit3=1，代表磁盘驱动器已经准备好了，可以写入
"wloop1f7:\n\t"
        "in %%dx,%%al\n\t"
        "mov %%al,%%ah\n\t"
        "and $0x01,%%al\n\t"        //如果bit0=1代表发生错误
        "cmp $0x01,%%al\n\t"
        "jz werror\n\t"
        "and $0x88,%%ah\n\t"
        "cmp $0x08,%%ah\n\t"
        "jnz wloop1f7\n\t"
        "jmp wexitwrite\n"
        //检测到磁盘故障，读取错误码
"werror:\n\t"
        "mov $0xdfdfdfdf,%%ecx\n\t"//读取错误的话将ecx设置为0xdfdfdfdf
        "mov $0x1f1,%%dx\n\t"
        "in %%dx,%%al\n"
"wexitwrite:\n\t"
        :"=c"(errsign),"=a"(errcode)
        :"d"(0x1f7),"c"(num),"b"(secaddr),"S"((HDD&0x01)<<4)
        );
        if(errsign==0xdfdfdfdf)return errcode;
        //开始向磁盘写入
        __asm__ __volatile__("mov %%ebx,%%ecx\n\t"
        "shr $1,%%ecx\n"
"wloopwrite:\n\t"
        "mov (%%edi),%%ax\n\t"
        "out %%ax,%%dx\n\t"
        "inc %%edi\n\t"
        "inc %%edi\n\t"
        "loop wloopwrite\n\t"
        "test $1,%%ebx\n\t" //如果最低为1，说明需要扩展一个字节然后写入
        "jz wnoalign\n\t"
        "xor %%eax,%%eax\n\t"
        "movb (%%edi),%%al\n\t"
        "out %%ax,%%dx\n"
"wnoalign:\n\t"
        ::"d"(0x1f0),"b"(length),"D"(mem)
        :"eax","ecx");
        //向磁盘写入不足512字节的部分，只有写入数据满扇区的整倍数磁盘才执行成功
        __asm__ __volatile__("xor %%eax,%%eax\n"
"wloopw1:\n\t"
        "out %%ax,%%dx\n\t"
        "loop wloopw1\n\t"
        ::"c"((512-length%512)/2)
        :"edx","eax");
return num*512;//返回写入的数据长度，单位：字节
}
