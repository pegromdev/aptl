BINDIR = /usr/bin
CFGDIR  = /etc/aplt
HOOKDIR = /etc/pacman.d/hooks

.PHONY: install
install:
	@mkdir -p $(BINDIR)
	@cp src/aplt $(BINDIR)/aplt
	@chmod 755 $(BINDIR)/aplt
	@mkdir -p $(HOOKDIR)
	@cp src/aplt.hook $(HOOKDIR)/aplt.hook
	@chmod 644 $(HOOKDIR)/aplt.hook
	@sh $(BINDIR)/aplt 

	

.PHONY: uninstall
uninstall:
	$(RM) $(BINDIR)/aplt
	rm -R $(CFGDIR)
	$(RM) $(HOOKDIR)/aplt.hook



