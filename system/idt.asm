;Interrupt Descriptor Table for Lithium-OS
;Developed by Alexander Kitaev
;COPYLEFT Alexander Kitaev, 2013

[ORG 0x0000B000]

push eax; Current memory address
push ebx; Interrupt number
push ecx; Used as temp var for calculations
push edx; Used to hold memory address of interrupt

mov ebx,0
mov eax,0x0000B400; we're not expecting this program to go over 0x400 bytes- but this might change
mainloop:
    mov ecx,edx
    shr ecx,16
    mov word[eax],cx; get the lower part
    add eax,16
    ;TODO- LOAD SELECTOR
    add eax,16
    mov ch,0; it's meant to be ch- 8 bit values!
    mov byte[eax],ch; clear out that memory
    add eax,8
    mov byte[eax],0xE0; privilege level is 0- FOR NOW
    add eax,8
    mov ecx,edx
    mov word[eax],cx; get the upper part
    add eax,16
    add edx,0x400; size of actual interrupt code
    cmp ebx,IntTotal
    jne mainloop

pop edx
pop ecx
pop ebx
pop eax
;================
;Data declarations
IntTotal db 20; The total number of interrupts. This is subject to change
