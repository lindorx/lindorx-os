#pragma once

#include<fs/lxstruct.h>

//enum {fd_open} _iobuf_flag;
#define IOBUF_FLAG_R  1  //只读
#define IOBUF_FLAG_W  2  //只写
#define IOBUF_FLAG_AP   4 //追加
#define IOBUF_FLAG_TXT  8 //文本模式
#define IOBUF_FLAG_BIN  16 //二进制模式
#define IOBUF_FLAG_RW   32  //可读可写

struct _iobuf {
  char *_ptr;//文件输入的下一个位置，即fseek操作的值
  int   _cnt;//当前缓冲区相对位置,即剩余还未操作的数据字节数
  char *_base;//数据缓冲区地址
  int   _flag;//标志
  int   _file;//文件有效性验证
  int   _charbuf;//检查缓冲区状况
  int   _bufsiz;//缓冲区大小
  char *_tmpfname;//临时文件名
  _ln _node;//此文件信息所在节点
  int _pos;//节点索引数组下标
  long _fsz;//文件大小
};
typedef struct _iobuf FILE;

//打印文件描述符
int printFILE(FILE *f);

//文件打开函数
FILE *fopen(const char *filename, const char *mode);

//文件读取
size_t fread(void *ptr, size_t size, size_t nmemb, FILE *stream);

extern int fstream_buf_flag;