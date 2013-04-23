write_string:
    push bx
    push cx
    push dx
    mov bx,ax; the color's now in bx
    pop dx
    pop cx
    pop bx
write_string_loop:
    lodsb
    cmp ax,0
    je write_string_done
    call write_char
    jmp write_string_loop
write_char:
    ;the character is in ax
    mov byte[ScreenAddress],ax
    inc ScreenAddress
    mov byte[ScreenAddress],bx; the color
    inc ScreenAddress
    ret
write_string_done:
    ret
;=====================================
;Variable declarations
ScreenAddress db 0xb8000
