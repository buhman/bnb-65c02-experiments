HOME = /home/buhman

all:

%.asm: %.asm.in common.m4
	m4 < $< > $@

%.bin: %.asm
	$(HOME)/6502-asm/main $< $@

%.rom: %.bin
	python $(HOME)/6502-asm/link.py $< $@

%.prog:	%.rom
	minipro -p AT28C256 -w $<

clean:
	rm -f *.bin *.rom

.SUFFIXES:
.INTERMEDIATE:
.PRECIOUS: %.bin %.rom %.asm
.PHONY: all clean
