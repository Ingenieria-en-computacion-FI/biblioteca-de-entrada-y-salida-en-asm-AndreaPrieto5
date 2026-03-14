SECTION .bss
char_buffer resb 1

SECTION .text
global print_char

; ---------------------------------
; print_char
; Entrada:
;   AL = caracter a imprimir
; ---------------------------------

print_char:

    push ebp
    mov ebp, esp

    ; TODO:
    ; 1. Guardar el caracter en memoria
    mov [char_buffer], al

    ; 2. Usar syscall write
    mov eax, 4
    mov ebx, 1
    mov ecx, char_buffer

    ; 3. Imprimir 1 byte
    mov edx, 1
    int 0x80

    mov esp, ebp
    pop ebp
    ret
