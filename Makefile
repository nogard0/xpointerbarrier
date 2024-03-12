__NAME__ = xpointerbarrier

CFLAGS += -std=c99 -Wall -Wextra -O2 `pkg-config --cflags x11 xfixes xrandr`
LDFLAGS += -lm `pkg-config --libs x11 xfixes xrandr xi`

INSTALL = install
INSTALL_PROGRAM = $(INSTALL)
INSTALL_DATA = $(INSTALL) -m 644

prefix = /usr/local
exec_prefix = $(prefix)
bindir = $(exec_prefix)/bin
datarootdir = $(prefix)/share
mandir = $(datarootdir)/man
man1dir = $(mandir)/man1


.PHONY: clean install installdirs

$(__NAME__): $(__NAME__).c
		$(CC) $(CFLAGS) $(LDFLAGS) -D__NAME__=\"$(__NAME__)\" -o $@ $< $(LDFLAGS)

clean:
	rm -f $(__NAME__)

install: $(__NAME__) installdirs
	$(INSTALL_PROGRAM) $(__NAME__) $(DESTDIR)$(bindir)/$(__NAME__)
	$(INSTALL_DATA) man1/$(__NAME__).1 $(DESTDIR)$(man1dir)/$(__NAME__).1

installdirs:
	mkdir -p $(DESTDIR)$(bindir) $(DESTDIR)$(man1dir)
