# Assembly-x86

## Registradores
ax, bx, cx, dx                                                                                                                     
Para x86 use "e": eax, ebx, ecx, edx                                                                                                     
Para x64 use "r": rax, rbx, rcx, rdx                                                                                                     

## Definindo variaveis
Ex:                                                                                                                     
<NOME_VARIAVEL> equ 1                                                                                                                  
numero_um equ 1

## Definindo strings
dd - Define Double Word - 4 bytes                                                                                                      
db - Define Bytes - 1 byte                                                                                                              
dw - Define Word - 2 bytes                                                                                                              
dq - Define Quad Word - 4 bytes                                                                                                         
dt - Define Ten Word - 10 bytes                                                                                                         


Ex:                                                                                                                                    
<NOME_VARIAVEL> db 'Hello World!', 0xa                                                                                                  
msg db 'Hello World', 0xa

## Checando o Comprimento da String
Ex:                                                                                                                                     
<NOME_VARIAVEL> equ $- <VARIAVEL_STRING>                                                                                                
len_string equ $- msg

## Exibindo conteudo no console
### Example file:  [hello-world.asm](hello-world.asm)
Para isso iremos precisar de uma string para exibir e seu tamanho.

Primeiro irei definir algumas variaveis para facilitar o entendimento.

SYS_EXIT equ 1                                                                                                                          
SYS_READ equ 3                                                                                                                     
SYS_WRITE equ 4                                                                                                                     
RET_EXIT equ 5                                                                                                                     
STD_IN equ 0 ; Input - Recebe dados do usuario                                                                                          
STD_OUT equ 1 ; Output - Exibe dados ao usuario                                                                                         
                                                                                                                        
  ; Definindo as variaveis                                                                                                               
  msg db 'Hello World', 0xa                                                                                                             
  msg_len equ $- msg  
  
  
  ; Exibindo o conteudo da string                                                                                                         
  mov eax, SYS_WRITE                                                                                                                     
  mov ebx, STD_OUT                                                                                                                     
  mov ecx, msg ; Conteudo a ser exibido                                                                                                 
  mov edx, msg_len ; Tamanho da string a ser exibida                                                                                     
  int 0x80 ; Manda para o kernel as informações                                                                                         
  
  ; Finalizando o programa                                                                                                               
  mov eax, 1                                                                                                               
  mov ebx, 0                                                                                                               
  int 0x80                                                                                                               
  

## Recebendo dados do usuario
### Example file:  [data-input.asm](data-input.asm)

Em ``` segment .bss ```, nome resb MAX_IN lê a quantidade de caracteres definidos em "MAX_IN" e salva em "nome".                        
``` mov ecx, nome ``` Ao invés de setar a variavel a ser exibida, e setada a variavel a ser salvo o que for recebido.   
``` mov edx, MAIN_IN ``` Seta o numero maximo de caracteres a ser lido.  
Para melhor entendimento leia o example file.                                                                                           




