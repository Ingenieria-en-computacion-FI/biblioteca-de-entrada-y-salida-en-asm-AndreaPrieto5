SECTION .text
global scan_string

; ---------------------------------
; scan_string
; Entrada:
;   EAX = buffer destino
;   EBX = tamaño máximo
; ---------------------------------

scan_string:

    push ebp
    mov ebp, esp

    ; TODO:
    ; 1. syscall read
    mov ecx, eax
    mov edx, ebx
    mov eax, 3
    mov ebx, 0
    int 0x80
    ; 2. guardar en buffer
    ; 3. agregar terminador 0
    mov byte [ecx + eax - 1], 0

    mov esp, ebp
    pop ebp
    ret
