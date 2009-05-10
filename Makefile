CFLAGS = -Os -W -Wall -std=gnu99
LDFLAGS = -lpam

XSL = http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
XSLTPROC = xsltproc --nonet

.PHONY: all
all: ulock

ulock: ulock.o

.PHONY: clean
clean:
	rm -f tags ulock *.o *.1

ulock.1: ulock.xml
	$(XSLTPROC) --output $(@) $(XSL) $(<)

# vim:ts=4
