PREFIX ?= /usr/local

install: bin/shipment
	@cp -p $< $(PREFIX)/$<

uninstall:
	rm -f $(PREFIX)/bin/shipment

.PHONY: install uninstall
