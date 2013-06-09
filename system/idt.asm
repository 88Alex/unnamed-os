; Interrupt Descriptor Table for Lithium-OS 1.0
; Developed by Alexander Kitaev
; COPYLEFT Alexander Kitaev

ORG [0x0000B100]

; Interrupt 0- Programmable Timer Interrupt
iret

align 64
;Interrupt 1- Keyboard interrupt

pushad
cmp word[0x0000D002],0 ; kbdHandlerLoc
je endIsr1
in ax,60h
push ax ; C functions place arguments on the stack
call word[0x0000D002]
endIsr1:
    popad
    iret

align 64
;Interrupt 2- Internal

iret

align 64
;Interrupt 3

iret

align 64
;Interrupt 4

iret

align 64
;Interrupt 5

iret

align 64
;Interrupt 6

iret

align 64
;Interrupt 7

iret

align 64
;Interrupt 8

iret

align 64
;Interrupt 9

iret

align 64
;Interrupt 10

iret

align 64
;Interrupt 11

iret

align 64
;Interrupt 12- PS/2 Mouse

pushad
cmp word[0x0000D006],0
je endIsr12
; Load mouse data
call word[0x0000D006]
endIsr12:
    popad
    iret

align 64
;Interrupt 13

iret

align 64
;Interrupt 14

iret

align 64
;Interrupt 15

iret

align 64
;Interrupt 16- PS/2 Cat (Just kidding)

iret
; EOF