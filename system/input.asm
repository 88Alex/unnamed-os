input_str:
    push eax
    push ebx
    push ecx
    push edx
    call get_char_input; it's in kbddriver.asm
    cmp al,10
    je input_str_done
    mov bl,al
    stosb
    ; Output that char
    jmp input_str
input_password:
    push eax
    push ebx
    push ecx
    push edx
    call get_char_input;
    cmp al,10
    je input_str_done
    stosb
    lea si,asterisk
    call 0x00009000 ; Output string
input_str_done:
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret

asterisk db '*',0

%include "kbddriver.asm"; to be added
