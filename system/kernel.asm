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

kernel_password_input:;0x000090A0
    call password_input
    ret

;File function

kernel_create_file:;0x000090C0
    call create_file
    ret

align 32

kernel_read_file:;0x000090E0
    call read_file
    ret

align 32

kernel_write_file:;0x0000A000
    call write_file
    ret

align 32

kernel_append_file:;0x0000A020
    call append_file
    ret

align 32

kernel_delete_file:;0x0000A040
    call delete_file
    ret

align 32

kernel_file_exists:;0x0000A060
    call file_exists
    ret

align 32

;Multithreading functions

kernel_add_proc:;0x0000A080
    call add_proc
    ret

align 32

kernel_proc_wait:;0x0000A0A0
    call proc_wait
    ret

align 32

kernel_end_proc:;0x0000A0C0
    call end_proc
    ret

align 32

kernel_panic:;0x0000A0E0
    lea si,panic_msg
    mov al,0x0a;red on black
    call kernel_write_color_string
    ;shutdown

%include "output.asm"
%include "input.asm"
%include "mt.asm";to be added

panic_msg db "A fatal error occured. Lithium-OS is shutting down.",10,0
