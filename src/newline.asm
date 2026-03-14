extern print_char
global newline

SECTION .text

newline:

    push ebp
    mov ebp, esp

    ; TODO:
    ; imprimir '\n'
    mov al, 10
    call print_char

    mov esp, ebp
    pop ebp
    ret
