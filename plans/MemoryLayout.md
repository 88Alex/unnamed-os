Memory Layout Plans
========

0x9000-0xB000: Kernel

0xB000-0xB100: IDT

0xB100-0xC000?: Interrupts

0xD000-0xE000?: GDT

0xE000-0x10000: Page Directory and Page Table

0x10000-?: System vars

0xB8000-?: Video memory

0xD0000: Program loading space

Plan for System Vars
========

Current screen x-pos and y-pos, 2 bytes each: 4 bytes total

Total memory being used, in kb: 4 bytes
