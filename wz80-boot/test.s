.section text
LD a,5
LD b,7
ADD a,b
LD (Result),a

.section data
Result: .space 1

