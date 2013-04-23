input_str:
    call get_char_input; it's in kbddriver.asm
    cmp ax,10
    je input_str_done
    lodsb
    jmp input_str
input_str_done:
    ret; return to the kernel
%include "kbddriver.asm"; to be added
