;System variables for Lithium-OS
;Developed by Alexander Kitaev
;COPYLEFT Alexander Kitaev

ORG [0x0000D000]

;Screen position
xPos db 0
yPos db 0

;Location of kbdHandler function
kbdHandlerLoc db 0
currKeyPushed db 0

;Location of mouseHandler function
mouseHandlerLoc db 0
currMouseXPos db 0
currMouseYPos db 0

;Other vars go here
