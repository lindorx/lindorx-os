#coding=utf-8
import re
import sys
import os

srcfile='lk.txt'
desfile='macro.inc'


rootdir=os.getcwd()
ifile=rootdir+r'/'+sys.argv[0]
ifile=ifile.replace('mlka.py',srcfile) 
print(ifile)

ofile=ifile.replace(srcfile,desfile)
fun_lk_name='_load_kernel'
fun_lk_match='[\d | a-f]{8,}.*?<'+fun_lk_name+'>'

def read_lk_addr():
    f=open(ifile,'r')
    print("open ifile="+ifile)
    lk_str=f.read()
    f.close()
    lk_fun=re.findall(fun_lk_match,lk_str)
    if lk_fun==[]:
        print("not found load_kernel")
        return -1
    lk_addr=re.search(r'[0-9 | a-f]{8,}',lk_fun[0])
    if lk_addr==None:
        print("not found load_kernel")
        return -1
    lk_addr=str(lk_addr.group())
    print('lk addr = '+lk_addr)
    print('open ofile='+ofile)
    with open(ofile,'rb+') as f: 
        print('write lk addr')
        macro_str=f.read().decode('utf-8') 
        f.seek(0,0)
        lk_addr_macro=re.search(r'LK_ADDR.*?equ.*?0x([0-9 | a-f]{8,})',macro_str)
        if lk_addr_macro==None:
            print('not get old lk addr')
            return -1
        old_lk_addr=lk_addr_macro.span(1)

        macro_str=macro_str[0:old_lk_addr[0]]+lk_addr+macro_str[old_lk_addr[1]:]
        f.write(macro_str.encode())             

if __name__=='__main__':
    read_lk_addr()
