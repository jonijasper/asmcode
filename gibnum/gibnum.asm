section .data
    prompt db 'Gib number: ',0xa
    promptlen equ $-prompt
    confirm db 'You gibbed: '
    confirmlen equ $-confirm

section .bss
    userinput resb 5 ;reserve 5 bytes for user interrupt

section .text
    global _start

_exit:
    mov eax,1 ;sys_exit
    mov ebx,0 ;exit code
    int 0x80 ;kernel call

_kernel:
    int 0x80 ;call kernel
    ret ;return to caller

_start:
    ;print prompt
    mov eax,4 ;sys_write
    mov ebx,1 ;stdout
    mov ecx,prompt
    mov edx,promptlen
    call _kernel

    ;read user input 
    mov eax,3 ;sys_read
    mov ebx,2 ;stdin
    mov ecx,userinput ;reserved space
    mov edx,5 ;5 bytes reserved
    call _kernel

    ;print confirmation and the number
    mov eax,4 ;sys_write
    mov ebx,1 ;stdout
    mov ecx,confirm
    mov edx,confirmlen
    call _kernel

    mov eax,4
    mov ebx,1
    mov ecx,userinput
    mov edx,5
    call _kernel

    call _exit
