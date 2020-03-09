SYS_EXIT equ 1
SYS_READ equ 3
SYS_WRITE equ 4
RET_EXIT equ 5
STD_IN equ 0
STD_OUT equ 1
MAX_IN equ 10

segment .data
    msg db "Digite seu nome: ", 0xA, 0xD
    len equ $- msg

segment .bss
    nome resb MAX_IN
    len_nome equ $- nome

segment .text

global _start

_start:
    ; Registradores
    ; ax, bx, cx, dx - Use - e x86 - r x64
    ; Saida
    mov eax, SYS_WRITE
    mov ebx, STD_OUT
    mov ecx, msg
    mov edx, len
    int 0x80

    ;Entrada
    mov eax, SYS_READ
    mov ebx, STD_IN
    mov ecx, nome
    mov edx, MAX_IN
    int 0x80

    ; Mostra o nome
    mov eax, SYS_WRITE
    mov ebx, STD_OUT
    mov ecx, nome
    mov edx, len_nome
    int 0x80
exit:
    mov eax, SYS_EXIT
    mov ebx, RET_EXIT ; xor ebx, ebx
    int 0x80
