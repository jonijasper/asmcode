section .text
    global _start

_start:     ;entry point
    mov edx,len
    mov ecx,msg
    mov ebx,1   ;stdout
    mov eax,4   ;sys_write
    int 0x80

    mov eax,1   ;sys_exit
    int 0x80

section .data
msg db 'Hello, world!',0xa
len equ $ - msg

;msg: label for the data element
;db: define byte (for every character in the string + 0xa)
;0xa: \n

;len: label 
;equ: assing value
;$: "here" 
;$-msg = number of bytes btw $ and the beginning of msg = the length of msg

