;Lithium-OS Kernel
;Developed by Alexander Kitaev.
;Copyleft Alexander Kitaev.

ORG [0x00008000]

;IO Functions
kernel_write_string:
    mov al,0x29; default colors- blue on dark green. Please, don't criticize!
    call write_string
    ret

kernel_write_color_string:
    call write_string
    ret

kernel_input_string:
    call input_string
    ret

;Multithreading functions
kernel_add_proc:
    call add_proc
    ret

kernel_proc_wait:
    call proc_wait
    ret

kernel_end_proc:
    call end_proc
    ret

%include "output.asm"
%include "input.asm"
%include "mt.asm";to be added
