write_string:
    push bx
    push cx
    push dx
    mov bl,al; the color's now in bx
    mov ch,xPos
    mov cl,yPos
    call write_string_loop
    pop dx
    pop cx
    pop bx
    ret
write_string_loop:
    lodsb
    cmp al,0
    je write_string_done
    call write_char
    jmp write_string_loop
write_char:
    ;the character is in al
    cmp al,10
    je write_newline
    cmp al,32
    jb write_invalid_char
    mov dx,cl
    mul dx,80
    add dx,ch
    add dx,ScreenAddress
    mov byte[dx],al
    inc dx
    mov byte[dx],bl
    inc xPox
    ret
write_newline:
    mov xPos,0
    inc yPos
    ;TODO- write code handling screen overflow
    jmp write_string_loop
write_invalid_char:
    lea ax,invalidCharMsg
    call write_string
    ret
write_string_done:
    ret

write_string_loc:
    push cx
    push dx
    ;bh is xpos, bl is ypos
    mov xPos,bh
    mov yPos,bl
    call write_string_loop
    pop dx
    pop cx
    ret

;=====================================
;Variable declarations
ScreenAddress db 0xb8000
xPos db 0
yPos db 0
invalidCharMsg db "Error- character cannot be displayed.",0
