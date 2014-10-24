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
	@cp -f etc/nginx.tmpl /etc/shipment/

uninstall:
	@$(foreach BIN, $(BINS), \
		echo "removing $(notdir $(BIN))"; \
		rm -f $(BIN) $(DESTDIR)$(BINPREFIX); \
	)

.PHONY: install uninstall
