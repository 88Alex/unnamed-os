; Interrupt Descriptor Table for Lithium-OS 1.0
; Developed by Alexander Kitaev
; COPYLEFT Alexander Kitaev

ORG [0x0000B100]

; Interrupt 0- Programmable Timer Interrupt
iret

align 256
;Interrupt 1- Keyboard interrupt

pushad
cmp [0x0000D002],0 ;kbdHandlerLoc
je endIsr1
in [0x0000D003],60h
call [0x0000D002]
endIsr1:
    popad
    iret

align 256
;Interrupt 2- Internal

iret

align 256
;Interrupts 3-15 unused
