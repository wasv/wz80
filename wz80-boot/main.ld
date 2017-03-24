SECTIONS
{
    .start 0x0 : { main.o(.text) }
    .text . : { *(.text) }
    .data ALIGN(0x1000)  : { *(.data) }
    .bss  . : { *(.bss)  }
}
