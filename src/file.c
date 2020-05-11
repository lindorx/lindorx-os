//文件处理
#include<file.h>
#include<fs/lx.h>
#include<fs/lxerror.h>
#include<string.h>
#include<memory.h>
#include<stdio.h>
#include<_asm.h>

int fstream_buf_flag=FALSE;//真：启用缓冲区；假：不启用

int get_file_flag(char ch)
{
        int f=0;
        switch(ch){
                case 'r':
                        f=IOBUF_FLAG_R;
                        break;
                case 'w':
                        f=IOBUF_FLAG_W;
                        break;
                case 'a':
                        f=IOBUF_FLAG_AP;
                        break;
                case 't':
                        f=IOBUF_FLAG_TXT;
                        break;
                case 'b':
                        f=IOBUF_FLAG_BIN;
                        break;
                case '+':
                        f=IOBUF_FLAG_RW;
                        break;
        }
        return f;
}

//文件打开函数
FILE *fopen(const char *filename, const char *mode)
{
        size_t modesz=strlen(mode);
        //获取一个内存空间储存结构
        FILE *f=(FILE*)calloc(sizeof(FILE));
        if(f==NULL)
                return NULL;
        //打开文件
        //fileItems fis[FILE_DES_NUM];
        _ln node;
        tree_error err=LX_FileOpen(filename,strlen(filename),&node);
        if(err==ERR_NOT_FOUND_FILE_NAME && mode[0]=='w'){//没有找到文件
                //申请一块内存用于储存要写入的数据
                f->_base=(char*)__get_free_pages(___GFP_PMEM,0);//申请1页
        }
        else if(iserrcode(err))
                goto fopen_error;
        if(fstream_buf_flag){//找到文件，在这里初始化一页文件缓冲区，并将文件的第一页内容载入此缓冲区
                /*
                f->_pos=err;
                f->_node=node;
                f->_fin=err;

                //缓冲区的最前面是文件名，不可使用
                //获取文件名
                
                */
        }
        //设置文件描述符
        int p=err<0?0:node->file_off[err];
        _fileitems fis=&(node->fi[p]);//指向找到的文件描述符
        f->_flag=get_file_flag(mode[0])|get_file_flag(mode[1])|get_file_flag(2);
        f->_pos=err;
        f->_node=node;
        if(fstream_buf_flag){
                f->_base=(char*)__get_free_pages(___GFP_PMEM,0);
                if(f->_base==NULL)
                        goto fopen_error;
                char *fname=takeFileName(fis);
                if(fname==NULL){
                        __free_pages(f->_base,0);
                        goto fopen_error;
                }
                size_t fnamesz=fnb_p;
                memcpy(f->_base,fname,fnamesz);
                f->_base+=fnamesz;
                f->_bufsiz=PGSIZE-fnamesz;
                //加载文件数据
                err=LX_FileRead(fis,f->_base,f->_bufsiz);
                if(iserrcode(err)){
                        __free_pages(f->_base,0);
                        goto fopen_error;
                }
                f->_fsz=err;
                
        }
        return f;
fopen_error:
        free(f);
        return NULL;
}

//打印文件描述符
int printFILE(FILE *f)
{
        printf("struct FILE size=%d\n",sizeof(FILE));
        printf("_ptr=0x%x\n",f->_ptr);
        printf("_cnt=0x%x\n",f->_cnt);
        printf("_base=0x%x\n",f->_base);
        printf("_flag=0x%x\n",f->_flag);
        printf("_file=0x%x\n",f->_file);
        printf("_charbuf=0x%x\n",f->_charbuf);
        printf("_tmpfname=\"%s\"\n",f->_tmpfname);
        printf("_node=0x%x\n",f->_node);
        printf("_pos=0x%x\n",f->_pos);
        return sizeof(FILE);
}

//文件读取
size_t fread(void *ptr, size_t size, size_t nmemb, FILE *stream)
{
        long rsz=size*nmemb;
        tree_error err;
        _ln node=stream->_node;
        int p=stream->_pos<0?0:node->file_off[stream->_pos];
        _fileitems fis=&(node->fi[p]);//指向赵找到的文件描述符
        //fopen会初始化一块缓冲区并写入数据，根据stream记录的偏移量读取
        if(fstream_buf_flag){
                if(stream->_ptr-stream->_base > stream->_bufsiz){//数据不在缓冲区，重新读取覆盖缓冲区
                err=LX_FileRead(fis,stream->_base,stream->_bufsiz);
                }
                memcpy(ptr,stream->_base,rsz);
        }
        else{//非缓冲区模式
                err=LX_FileRead(fis,ptr,rsz);//没有使用偏移
                if(iserrcode(err))
                        return 0;
        }
        return rsz;
}

//stream：文件；offset：偏移偏移量；fromwhere：偏移起始位置
int fseek(FILE *stream, long offset, int fromwhere)
{
        //起始就是该表_ptr值，此值为文件下一步要操作的地址
        if(offset<0)//偏移值超过2G
                return offset;
        offset=offset>stream->_bufsiz?stream->_bufsiz:offset;//将offset修改为合适大小
        switch(fromwhere){
                case SEEK_SET:{//从文件开头偏移
                        stream->_ptr=stream->_base+offset;
                }break;
                case SEEK_CUR:{//从当前位置偏移
                        stream->_ptr=stream->_base+offset>stream->_cnt?stream->_cnt:offset;
                }break;
                case SEEK_END:{//从文件尾部偏移
                        stream->_ptr=stream->_base+stream->_bufsiz-offset;
                }break;
                default:
                        return -1;
        }
        stream->_cnt=stream->_ptr-stream->_base;
        return 0;
}