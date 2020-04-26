#pragma once
#include<type.h>
/*struct ldt_t{
	uint16	        limit0;
	uint16	        base0;
	byte		base1;
        union{
                struct {
                        byte		TYPE:4;
	                byte		S:1;	//系统段=0，非系统段=1，ldt和tss应将其定义为0
	                byte		DPL:2;	//权限
	                byte		P:1;
                }atts;
                byte t;
        }att0;
        union {
                struct {
                        byte		limit1:4;
	                byte		AVL:1;
	                byte		L:1;
	                byte		D_B:1;
	                byte		G:1;
                }atts;
                byte t;
        }att1;
	byte		base2;
}__attribute__ ((aligned (1)));*/

struct ldt_struct{
        uint16	        limit0;
	uint16	        base0;
	byte		base1;
        union {
                struct{
                        byte		TYPE:4;
	                byte		S:1;	//系统段=0，非系统段=1，ldt和tss应将其定义为0
	                byte		DPL:2;	//权限
	                byte		P:1;
                };
                byte type0;
        };
        union{
                struct {
                        byte		limit1:4;
	                byte		AVL:1;
	                byte		L:1;
	                byte		D_B:1;
	                byte		G:1;
                };
                byte type1;
        };
        byte		base2;
}__attribute__ ((aligned (1)));

typedef struct ldt_struct ldt_t;