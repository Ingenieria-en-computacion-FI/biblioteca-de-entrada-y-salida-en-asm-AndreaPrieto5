SECTION .text
global print_string

; ---------------------------------
; print_string
; Entrada:
;   EAX = direccion de cadena
;   cadena terminada en 0
; ---------------------------------

print_string:

    push ebp
    mov ebp, esp

    ; TODO:
    ; 1. calcular longitud
    mov esi, eax
    xor edx, edx

calc_len:
    cmp byte [esi + edx], 0
    je imprimir
    inc edx
    jmp calc_len

imprimir:
    ; 2. syscall write
    mov eax, 4
    mov ebx, 1
    mov ecx, esi
    int 0x80

    mov esp, ebp
    pop ebp
    ret
