# ROM Core
Creates a block of ROM using input from a file. Can store up to 16k in a single ROM entity.. However, 16k ROMs can be combined to form larger ROMs as shown in top.vhd.

## Expected ROM File format
One 2-digit hex byte per line.
```
c3
00
00
```
