section .data
const1 equ 5
vari dd 7
section .text
global _start
_start:
    mov eax, const1
    mov ebx, [vari]
    sub eax, ebx
    
    mov eax, 1
    xor ebx, ebx
    int 80h
