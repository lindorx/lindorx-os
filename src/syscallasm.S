.globl _syscall

_syscall:
        push %ebp
        mov %esp,%ebp
        pushl 12(%ebp)
        pushl 8(%ebp)
        pushl 4(%ebp)
        pushl %eax
        call _syscall_table     //进入_syscall_table()
        addl $16,%esp
        pop %ebp
        iret