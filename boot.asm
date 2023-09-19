[org 0x7c00]            ; The code in the boot sector of the disk is loaded by the BIOS at 0000:7c00

mov ah, 0x0e            ; tty mode
mov al, "X"             ; a symbol to print
mov cx, 0xFF            ; 255 iterations
cycle:
    int 0x10
    loop cycle
jmp $                   ; jump to current address = infinite loop

times 510-($-$$) db 0   ; padding with zeroes
dw 0xaa55               ; magic bytes for the MBR
