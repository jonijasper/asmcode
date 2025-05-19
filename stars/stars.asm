section .text
    global _start

_start:
    ;print msg
    mov eax,4 ;sys_write
    mov ebx,1 ;stdout
    mov ecx,msg
    mov edx,len
    int 0x80

    ;print stars
    mov eax,4
    mov ebx,1
    mov ecx,stars
    mov edx,9 ;stars string is 9 bytes
    int 0x80

    ;exit
    mov eax,1
    mov ebx,0
    int 0x80

section .data
msg db 'Displaying 9 stars',0xa
len equ $-msg
stars times 9 db '*'

;stars: label
;times 9: repeat 9 times