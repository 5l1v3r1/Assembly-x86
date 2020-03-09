; -------------------
; Hello World
; -------------------

SYS_EXIT equ 1
SYS_READ equ 3
SYS_WRITE equ 4
RET_EXIT equ 5
STD_IN equ 0 
STD_OUT equ 1

section data:
    msg db 'Hello world', 0xa
    len equ $- msg

section .text:


global _start:

_start:
    mov edx, len
    mov ecx, msg
    mov ebx, SD_OUT
    mov eax, SYS_WRITE
    int 0x80
    mov eax, SYS_EXIT
    mov ebx, 0
    int 0x80
