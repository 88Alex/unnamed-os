;Interrupt Descriptor Table for Lithium-OS
;Developed by Alexander Kitaev
;COPYLEFT Alexander Kitaev, 2013

push eax; Current memory address
push ebx; Interrupt number
push ecx; Current GDT entry
push edx; Used to hold memory address of interrupt

mov ebx,0
mov eax,0x0000B000
mainloop:
    push ecx
    mov ecx,edx
    shr ecx,16
    mov word[eax],cx; get the lower part
    add eax,16
    pop ecx
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
    add edx,64; size of actual interrupt code
    cmp ebx,IntTotal
    jne mainloop

lidt 0x0000B000

pop edx
pop ecx
pop ebx
pop eax
;================
;Data declarations
IntTotal db 20; The total number of interrupts. This is subject to change
