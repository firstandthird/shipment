PREFIX ?= /usr/local
BINPREFIX ?= "$(PREFIX)/bin"
SHIPMENTPATH ?= /var/shipment
BINS = $(wildcard bin/shipment*)

install: template
	@echo "... installing bins to $(DESTDIR)$(BINPREFIX)"
	@$(foreach BIN, $(BINS), \
		echo "... installing $(notdir $(BIN))"; \
		cp -f $(BIN) $(DESTDIR)$(BINPREFIX); \
	)
	@shipment setup

uninstall:
	@$(foreach BIN, $(BINS), \
		echo "removing $(notdir $(BIN))"; \
		rm -f $(BIN) $(DESTDIR)$(BINPREFIX); \
	)
	echo "removing $(SHIPMENTPATH)"
	rm -f $(SHIPMENTPATH)

template:
	@mkdir -p $(SHIPMENTPATH)/nginx
	@cp -f etc/nginx.tmpl $(SHIPMENTPATH)/nginx/

.PHONY: install uninstall template
