; Compilar - Transformar o programa para linguagem de maquina
; nasm -f elf64 hello.asm
; Linkeditar - Transformar um programa em linguagem de maquina para um executavel
; ld -s -o hello.o

section .data ; Constantes do sistema (Apontamentos)
  msg: db 'Hello World!', 0xA
  tam: equ $- msg

section .text

global _start

_start:
  mov EAX, 0x4
  mov EBX, 0x1
  mov ECX, msg
  mov EDX, tam
  int 0x80 

saida:
  ;   destino, origem
  mov eax, 0x1 ; SO estou terminando o programa
  mov ebx, 0x0 ; SO o valor de retorno e 0
  int 0x80
  ; 0 1 2 3 4 5 6 7 8 9 A B C D E F 10
