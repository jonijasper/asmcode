section .text
    global _start

_start:
    ;instructions

section .data
msg db 'Displaying 9 stars',0xa
len equ $-msg
stars times 9 db '*'

;stars: label
;times 9: repeat 9 times