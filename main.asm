; windoof unter 64 bit


section .data
    msg db "Dings", 0


section .text
    global main
    extern ExitProcess
    extern WriteConsoleA
    extern GetStdHandle

main:
    mov rcx, -11
    call GetStdHandle

    mov rdx, rax
    mov rcx, rax

    mov rcx, rax
    lea rdx, [rel msg]
    mov r8d, 13
    sub rsp, 28h
    lea r9, [rsp+20h]
    xor rax, rax

    call WriteConsoleA ; Das hier schreibt dann in die Konsole

    add rsp, 28h

    xor rcx, rcx
    call ExitProcess