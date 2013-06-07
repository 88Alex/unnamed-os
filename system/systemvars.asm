;System variables for Lithium-OS
;Developed by Alexander Kitaev
;COPYLEFT Alexander Kitaev

ORG [0x0000CFFE] ; Two bytes before 0xD000

jmp end ; we don't want to execute this file

;Screen position
xPos db 0
yPos db 0

;Location of kbdHandler function
kbdHandlerLoc dd 0

;Location of mouseHandler function
mouseHandlerLoc dd 0

;Other vars go here

end:
; EOF
