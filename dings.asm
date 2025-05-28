section .text
global _start

_start:
    mov eax, 10 ; eax = 10
    add eax, 20 ; jetzt müsste eax 30 sein
    cmp eax, 30 ; ich glaub jetzt vergleicht der eax mit dem Wert 30
    je korrekt
    jmp ende

korrekt:
    mov ebx, 1 ; irgendeine Markierung

ende:
    mov eax, 1 ; unter linux exit
    int 0x80


; das hier funktioniert nur unter Linux