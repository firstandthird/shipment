PREFIX ?= /usr/local
BINPREFIX ?= "$(PREFIX)/bin"
BINS = $(wildcard bin/shipment*)

install:
	@echo "... installing bins to $(DESTDIR)$(BINPREFIX)"
	@$(foreach BIN, $(BINS), \
		echo "... installing $(notdir $(BIN))"; \
		cp -f $(BIN) $(DESTDIR)$(BINPREFIX); \
	)
	@mkdir -p /etc/shipment
	@cp -f etc/hipache.json /etc/shipment/config_dev.json
	@shipment load-balancer start

uninstall:
	rm -f $(PREFIX)/bin/shipment

.PHONY: install uninstall
