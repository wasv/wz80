/* vim: ft=z80
*/
.text

/*
 * Shifts accum right by b bits.
 */
.global rotate_mult
rotate_mult:
    PUSH bc
1:  RRCA
    DEC b
    JP Z, 2f
    JP 1b
2:  POP bc
    RET
