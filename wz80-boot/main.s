/* vim: ft=z80
*/
.section .text
    NOP
    NOP
    NOP
main:
    LD A, 255
    OUT (03h), A
    LD A, 1
1:  OUT (03h), A
    RLC A
    JP  1b
.data
.bss

