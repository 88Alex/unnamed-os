; System variables for Lithium-OS
; Developed by Alexander Kitaev
; COPYLEFT Alexander Kitaev

[ORG 0x0000CFFE] ; Two bytes before 0x0000D000
jmp end ; We don't want anyone executing this file

;Current screen position
xPos db 0 ; 0xD000
yPos db 0 ; 0xD001

;Location of kbdHandler function
kbdHandlerLoc dd 0 ; 0xD002

;Location of mouseHandler function
mouseHandlerLoc dd 0 ; 0xD006

;Console color
color db 0x07 ;0xD00A

;Other vars go here

end:
; EOF
