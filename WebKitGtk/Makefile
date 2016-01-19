INSTALL = install
COPY = cp -vf
COPYDIR = cp -rvf
BUILD= gcc -v -v -Wall 
LIBS= `pkg-config --cflags --libs gtk+-2.0 --libs webkit-1.0`
APP=achmadi-webview

build: main.c
	$(BUILD) -o $(APP) main.c $(LIBS)

.PHONY: build

