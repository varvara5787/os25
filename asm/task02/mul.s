section .data
    multiplier1 dd 0xF      ; 15
    multiplier2 dd 0xA      ; 10

section .text
global _start
_start:
    mov eax, [multiplier1]  ; eax = 15
    mov ebx, [multiplier2]  ; ebx = 10
    mul ebx                 ; eax = eax * ebx (результат: 150)
    
    ; Завершение программы
    mov eax, 1
    xor ebx, ebx
    int 80h
