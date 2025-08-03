STDOUT    equ 1
SYS_EXIT  equ 1
SYS_WRITE equ 4

section .text
    global _start

_exit:
    mov eax,SYS_EXIT
    mov ebx,0 ;exit code
    int 0x80 ;kernel call

_kernel:
    int 0x80 ;call kernel
    ret ;return to caller

_print:
    mov eax,SYS_WRITE
    mov ebx,STDOUT
    mov ecx,name
    mov edx,namelen
    call _kernel
    ret

_start:
    call _print

    mov [name], BYTE 'J'
    mov [name+5], BYTE 'J'
    
    call _print
    call _exit


section .data
    name db 'Toni Kasper',0xa
    namelen equ $-name


