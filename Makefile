BINDIR = /usr/bin
CFGDIR  = /etc/aplt
HOOKDIR = /etc/pacman.d/hooks

.PHONY: install
install:
	@mkdir -p $(DESTDIR)$(BINDIR)
	@cp src/aptl $(DESTDIR)$(BINDIR)/aplt
	@chmod 755 $(DESTDIR)$(BINDIR)/aplt
	@mkdir -p $(DESTDIR)$(HOOKDIR)
	@cp src/aptl.hook $(DESTDIR)$(HOOKDIR)/aplt.hook
	@chmod 644 $(DESTDIR)$(HOOKDIR)/aplt.hook
	@sh $(DESTDIR)$(BINDIR)/aptl

.PHONY: uninstall
uninstall:
	@rm -rf $(DESTDIR)$(BINDIR)/aplt
	@rm -rf $(DESTDIR)$(CFGDIR)
	@rm -rf $(DESTDIR)$(HOOKDIR)/aplt.hook
