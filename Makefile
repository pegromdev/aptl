BINDIR = /usr/bin
CFGDIR  = /etc/aptl
HOOKDIR = /etc/pacman.d/hooks

.PHONY: install
install:
	@mkdir -p $(BINDIR)
	@cp src/aptl	 $(BINDIR)/aptl
	@chmod 755 $(BINDIR)/aptl
	@mkdir -p $(HOOKDIR)
	@cp src/aptl.hook $(HOOKDIR)/aptl.hook
	@chmod 644 $(HOOKDIR)/aptl.hook
	@sh $(BINDIR)/aptl 

	

.PHONY: uninstall
uninstall:
	$(RM) $(BINDIR)/aptl
	rm -R $(CFGDIR)
	$(RM) $(HOOKDIR)/aptl.hook



