write_color_string:
    push ebx
    push ecx
    push edx
    mov bl,al; the color's now in bx
    mov ch,[0xD000]
    mov cl,[0xD001]
    call write_string_loop
    pop edx
    pop ecx
    pop ebx
    ret
write_string_loop:
    lodsb
    cmp al,0
    je write_string_done
    call write_char
    jmp write_string_loop
write_char:
    ; the character is in al
    cmp al,13
    je write_newline
    cmp al,9
    je write_tab
    cmp al,32
    jb write_invalid_char
    ; TODO- write screen displaying code
    ret
write_newline:
    mov ch,0
    add cl,15;15 pixels high characters
    ; TODO- write code handling screen overflow
    jmp write_string_loop
write_tab:
write_tab_loop:
    mov ebx,[0xD000] ; xPos
    and ebx,3 ; equivalent to ebx %= 4
    cmp ebx,0
    je write_string_loop ; We have printed the needed amount of spaces
write_tab_print_space:
    mov al,0x20 ; Space
    call write_char
    jmp write_tab_loop

write_invalid_char:
    lea ax,invalidCharMsg
    call write_string
    ret
write_string_done:
    mov [0xD000],ch
    mov [0xD001],cl
    ret

write_string_loc:
    push ecx
    push edx
    ; bh is xpos, bl is ypos
    mov xPos,bh
    mov yPos,bl
    call write_string_loop
    pop edx
    pop ecx
    ret

;=====================================
;Variable declarations
ScreenAddress db 0xb8000
invalidCharMsg db "Error- character cannot be displayed.",0
