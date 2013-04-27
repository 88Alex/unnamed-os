;Lithium-OS Kernel
;Developed by Alexander Kitaev.
;Copyleft Alexander Kitaev.

ORG [0x00009000]

;IO Functions
kernel_write_string:;0x00009000
    mov al,0x29; default colors- blue on dark green. Please, don't criticize!
    call write_string
    ret

align 32

kernel_write_color_string:;0x00009020
    call write_string
    ret

align 32

kernel_write_string_loc:;0x00009040
    mov al,0x29
    call write_string_loc
    ret

align 32

kernel_write_color_string_loc:;0x00009060
    call write_string_loc
    ret

align 32

kernel_input_string:;0x00009080
    call input_string
    ret

align 32

;Multithreading functions
kernel_add_proc:;0x000090A0
    call add_proc
    ret

align 32

kernel_proc_wait:;0x000090C0
    call proc_wait
    ret

align 32

kernel_end_proc:;0x000090E0
    call end_proc
    ret

align 32

%include "output.asm"
%include "input.asm"
%include "mt.asm";to be added
