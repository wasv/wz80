SECTIONS
{
    .start 0x0 : { main.o(.text) }
    .text . : { *(.text) }
    .data 0x8000 : { *(.data) }
    .bss  . : { *(.bss)  }
}
