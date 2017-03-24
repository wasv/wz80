/* vim: ft=z80
*/
.section .text,0
main:
    LD a,(Init)
    LD b,a
    LD a,(NumA)
    ADD a,b
    LD b, 0fh
    AND b
    LD b,4
    CALL rotate_mult
    EX af, af'
    LD a,(NumB)
    LD c,a
    EX af, af'
    OR c
    CALL rotate_mult
    LD (Result),a
    JP $

.data
Init: .db 0fh
NumA: .db 3
NumB: .db 5

.bss
Result: .space 1

