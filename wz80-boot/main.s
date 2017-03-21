.section .text,0
main:
    LD a,(NumB)
    LD b,a
    LD a,(NumA)
    ADD a,b
    LD (Result),a
    JP $

.data
NumA: .db 5
NumB: .db 7

.bss
Result: .space 1

