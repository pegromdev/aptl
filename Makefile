BINDIR = /usr/bin
CFGDIR  = /etc/aptl
HOOKDIR = /etc/pacman.d/hooks

.PHONY: install
install:
	@mkdir -p $(DESTDIR)$(BINDIR)
	@cp src/aptl $(DESTDIR)$(BINDIR)/aptl
	@chmod 755 $(DESTDIR)$(BINDIR)/aptl
	@mkdir -p $(DESTDIR)$(HOOKDIR)
	@cp src/aptl.hook $(DESTDIR)$(HOOKDIR)/aptl.hook
	@chmod 644 $(DESTDIR)$(HOOKDIR)/aptl.hook


.PHONY: uninstall
uninstall:
	@rm -rf $(DESTDIR)$(BINDIR)/aptl
	@rm -rf $(DESTDIR)$(CFGDIR)
	@rm -rf $(DESTDIR)$(HOOKDIR)/aptl.hook
