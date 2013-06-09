;Multi-threading system for Lithium-OS
;Developed by Alexander Kitaev
;COPYLEFT Alexander Kitaev

[ORG 0x0000B000]

create_proc:
    push ax
    push bx
    push cx
    push dx
    ;make the process
    inc ActiveProcCount
    pop dx
    pop cx
    pop bx
    pop ax
    ret
proc_wait:
    ;no registers are pushed because it's not a function- you use it with the jmp command
    mov ax,0x40
    mul ax,ActiveProcCount
    sub ax,0x40
    add ax,0xB000
    mov dword[NextProc-0x20],bx
    cmp ax,NextProc; if it's the last in the queue
    je back_to_first_proc
    add NextProc,0x40
    jmp next_proc
back_to_first_proc:
    mov NextProc,0x0000B000
next_proc:
    jmp [NextProc+0x20]
end_proc:
    ret

;==============
;Data declarations
ActiveProcCount db 1; the CLI
NextProc db 0x0000B000
NextFreeProc db 0x0000B040; each block is 32 bytes- 16 for the PID and 16 for the IP
