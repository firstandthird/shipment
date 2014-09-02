PREFIX ?= /usr/local

install: bin/doploy
	@cp -p $< $(PREFIX)/$<

uninstall:
	rm -f $(PREFIX)/bin/doploy

.PHONY: install uninstall
