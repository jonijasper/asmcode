section .data
    prompt db 'Gib number: ',0xa
    promptlen equ $-prompt
    confirm db 'You gibbed: '
    confirmlen equ $-confirm

section .bss
    userinput resb 5 ;reserve 5 bytes for user interrupt

section .text
    global _start

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
