TARGET=test
SOURCES=test.s
LDSCRIPT=test.ld

.PHONY: all

all: core.z80

core.z80: ${TARGET}.bin
	@dd if=/dev/zero of=$@ count=52 bs=1 2>/dev/null
	@dd if=$< of=$@ oflag=append conv=notrunc 2>/dev/null
	@echo "Adding" `echo 65535-$$(stat -c %s $@) | bc` "bytes of zeroes"
	@dd if=/dev/zero of=$@ oflag=append conv=notrunc bs=1 count=`echo 65535-$$(stat -c %s $@) | bc` 2>/dev/null

${TARGET}.bin: $(SOURCES:.s=.o) ${LDSCRIPT}
	z80-unknown-coff-ld ${LDSCRIPT} -o $@ $(SOURCES:.s=.o)

%.o: %.s
	z80-unknown-coff-as -o $@ $^
