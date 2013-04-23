;Lithium-OS Kernel
;Developed by Alexander Kitaev.
;Copyleft Alexander Kitaev.

;Write a string to the screen. Default color is blue on dark-green- please don't criticize my color choices!
kernel_write_string:
    mov ax,0x29; default colors
    call write_string; this is actually the color output function- we call it with default colors
    ret

kernel_write_color_string:
    call write_string; this is actually the color output function
    ret

%include "output.asm"
%include "input.asm"
