# Assembly-

## Registradores
ax, bx, cx, dx - Para x86 use "e": eax, ebx, ecx, edx - Para x64 use "r": rax, rbx, rcx, rdx

## Definindo strings
dd - Define Double Word - 4 bytes
db - Define Bytes - 1 byte
dw - Define Word - 2 bytes
dq - Define Quad Word - 4 bytes
dt - Define Ten Word - 10 bytes

<NOME_VARIAVEL> db 'Hello World!', 0xa

## Checando o Comprimento da String
<NOME_VARIAVEL> equ $- <VARIAVEL_STRING>

## Exibindo conteudo no console
Primeiro irei definir algumas variaveis para facilitar o entendimento.


