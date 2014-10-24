PREFIX ?= /usr/local
BINPREFIX ?= "$(PREFIX)/bin"
SHIPMENTPATH ?= /var/shipment
BINS = $(wildcard bin/shipment*)

install:
	@echo "... installing bins to $(DESTDIR)$(BINPREFIX)"
	@$(foreach BIN, $(BINS), \
		echo "... installing $(notdir $(BIN))"; \
		cp -f $(BIN) $(DESTDIR)$(BINPREFIX); \
	)
	@mkdir -p $(SHIPMENTPATH)/apps
	@mkdir -p $(SHIPMENTPATH)/nginx
	@cp -f etc/nginx.tmpl $(SHIPMENTPATH)/nginx/

uninstall:
	@$(foreach BIN, $(BINS), \
		echo "removing $(notdir $(BIN))"; \
		rm -f $(BIN) $(DESTDIR)$(BINPREFIX); \
	)
	echo "removing $(SHIPMENTPATH)"
	rm -f $(SHIPMENTPATH)

.PHONY: install uninstall
