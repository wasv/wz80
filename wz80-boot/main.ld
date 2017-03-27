SECTIONS
{
    .start 0x0 : { main.o(.text) }
    .text . : { *(.text) }
    .data ALIGN(0x1000)  : { *(.data) }
    .bss  0x8000 : { *(.bss)  }
}
