section .text
    global _start

_start:     ;entry point
    ;instructions

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

