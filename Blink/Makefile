INSTALL = install
COPY = cp -vf
COPYDIR = cp -rvf

install:
	$(INSTALL) -d $(DESTDIR)/usr/lib/chromium/
	$(INSTALL) -m 644 master_preferences $(DESTDIR)/usr/lib/chromium/
	$(INSTALL) -d $(DESTDIR)/usr/lib/chromium/default_apps/
	$(INSTALL) -m 755 external_extensions.json $(DESTDIR)/usr/lib/chromium/default_apps/
	$(INSTALL) -m 644 ublocko.crx $(DESTDIR)/usr/lib/chromium/default_apps/
	$(INSTALL) -d $(DESTDIR)/usr/bin/
	$(INSTALL) -m 755 chromium-light $(DESTDIR)/usr/bin/
	$(INSTALL) -m 755 chromium-lighter $(DESTDIR)/usr/bin/
	$(INSTALL) -m 755 chromium-lightest $(DESTDIR)/usr/bin/
	$(INSTALL) -d $(DESTDIR)/usr/share/applications/
	$(INSTALL) -m 755 chromium-light.desktop $(DESTDIR)/usr/share/applications/
	$(INSTALL) -m 755 chromium-lighter.desktop $(DESTDIR)/usr/share/applications/
	$(INSTALL) -m 755 chromium-lightest.desktop $(DESTDIR)/usr/share/applications/

.PHONY: install

