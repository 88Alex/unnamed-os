;Lithium-OS Kernel
;Developed by Alexander Kitaev.
;Copyleft Alexander Kitaev.

;Write a string to the screen. Default color is blue on dark-green- please don't criticize my color choices!
kernel_write_string:
    push ax
    push bx
    push cx
    push dx
    mov ax,0x29; default colors
    call write_string; this is actually the color output function- we call it with default colors
    pop dx
    pop cx
    pop bx
    pop ax
    ret

kernel_write_color_string:
    push bx; ax isn't pushed because it contains the color
    push cx
    push dx
    call write_string; this is actually the color output function
    pop dx
    pop cx
    pop bx
    ret

%include "output.asm"
%include "input.asm"
