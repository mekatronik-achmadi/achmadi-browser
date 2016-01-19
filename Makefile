INSTALL = install
COPY = cp -vf
COPYDIR = cp -rvfINSTALL = install
COPY = cp -vf
COPYDIR = cp -rvf
BUILD= gcc -v -v -Wall 
LIBS= `pkg-config --cflags --libs gtk+-2.0 --libs webkit-1.0`
APP=achmadi-webview

build: WebKitGtk/main.c
	$(BUILD) -o WebKitGtk/$(APP) WebKitGtk/main.c $(LIBS)

install:
	$(INSTALL) -d $(DESTDIR)/usr/lib/chromium/
	$(INSTALL) -m 644 Blink/master_preferences $(DESTDIR)/usr/lib/chromium/
	$(INSTALL) -d $(DESTDIR)/usr/lib/chromium/default_apps/
	$(INSTALL) -m 755 Blink/external_extensions.json $(DESTDIR)/usr/lib/chromium/default_apps/
	$(INSTALL) -m 644 Blink/ublocko.crx $(DESTDIR)/usr/lib/chromium/default_apps/
	$(INSTALL) -d $(DESTDIR)/usr/bin/
	$(INSTALL) -m 755 Blink/chromium-light $(DESTDIR)/usr/bin/
	$(INSTALL) -m 755 Blink/chromium-lighter $(DESTDIR)/usr/bin/
	$(INSTALL) -m 755 Blink/chromium-lightest $(DESTDIR)/usr/bin/
	$(INSTALL) -d $(DESTDIR)/usr/share/applications/
	$(INSTALL) -m 755 Blink/chromium-light.desktop $(DESTDIR)/usr/share/applications/
	$(INSTALL) -m 755 Blink/chromium-lighter.desktop $(DESTDIR)/usr/share/applications/
	$(INSTALL) -m 755 Blink/chromium-lightest.desktop $(DESTDIR)/usr/share/applications/
	$(INSTALL) -d $(DESTDIR)/usr/bin/
	$(INSTALL) -m 755 WebKitGtk/$(APP) $(DESTDIR)/usr/bin/
	$(INSTALL) -d $(DESTDIR)/usr/share/applications/
	$(INSTALL) -m 755 WebKitGtk/$(APP).desktop $(DESTDIR)/usr/share/applications/

.PHONY: build install

