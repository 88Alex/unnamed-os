write_string:
    ;all the registers have been transferred to the stack except for ax
    mov bx,ax; the color's now in bx
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
ScreenAddress db 0xb8000
