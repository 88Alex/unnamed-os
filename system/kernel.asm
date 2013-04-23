;Lithium-OS Kernel
;Developed by Alexander Kitaev.
;Copyleft Alexander Kitaev.

ORG [0x00008000]

;IO Functions
kernel_write_string:
    mov ax,0x29; default colors- blue on dark green. Please, don't criticize!
    call write_string
    ret

kernel_write_color_string:
    call write_string; this is actually the color output function
    ret

kernel_input_string:
    call input_string
    ret

;Execute a process (.proc file)
kernel_execute_process:
    call exec_process; it will return when a "wait" command is executed
    ret

;Multiprocessing functions- auto-executed by the kernel
kernel_multiproc_watch:
    ;need some way of making a process queue!
    call kernel_execute_process
    ;move to next process in queue
    jmp kernel_multiproc_watch

kernel_add_process:
    ;add it to queue

%include "output.asm"
%include "input.asm"
%include "procexec.asm"; to be added
