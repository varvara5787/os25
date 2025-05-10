section .data
    dividend dw 0xFFF       ; 4095
    divisor db 0xFF         ; 255

section .text
global _start
_start:
    mov ax, [dividend]      ; ax = 4095
    mov bl, [divisor]       ; bl = 255
    div bl                  ; al = ax / bl (частное), ah = остаток
    ; Результат: al = 16 (0x10), ah = 15 (0xF)
    
    ; Завершение программы
    mov eax, 1
    xor ebx, ebx
    int 80h
