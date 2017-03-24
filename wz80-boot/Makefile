TARGET=test
SOURCES=main.s fun.s
LDSCRIPT=main.ld

.PHONY: all hex dump bin core
all: core hex bin dump

core: core.z80
hex: ${TARGET}.hex
bin: ${TARGET}.bin
dump: ${TARGET}.dump

core.z80: ${TARGET}.bin
	@dd if=/dev/zero of=$@ count=52 bs=1 2>/dev/null
	@dd if=$< of=$@ oflag=append conv=notrunc 2>/dev/null
	@echo "Adding" `echo 65535-$$(stat -c %s $@) | bc` "bytes of zeroes to emulator image"
	@dd if=/dev/zero of=$@ oflag=append conv=notrunc bs=1 count=`echo 65535-$$(stat -c %s $@) | bc` 2>/dev/null

${TARGET}.dump: ${TARGET}.bin
	hexdump -ve '1/1 "%.02x "' -e '1/ "\n"' $< > $@

${TARGET}.bin: ${TARGET}.elf
	z80-unknown-coff-objcopy -O binary $< $@

${TARGET}.hex: ${TARGET}.elf
	z80-unknown-coff-objcopy -O ihex $< $@

${TARGET}.elf: $(SOURCES:.s=.o) ${LDSCRIPT}
	z80-unknown-coff-ld -T ${LDSCRIPT} $(SOURCES:.s=.o) -o $@

%.o: %.s
	z80-unknown-coff-as -o $@ $^
