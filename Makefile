ZIRCON_PATH := $(abspath ../Zircon)
COMPILER := $(ZIRCON_PATH)/bin/zirconc.exe
INCLUDE := $(ZIRCON_PATH)/include

default: build

bin/velesc.exe: $(wildcard src/*.zir)
	$(COMPILER) src/Main.zir -o $@ -I$(INCLUDE) -lDbgHelp

bin/veles.exe: $(wildcard tool/*.zir)
	$(COMPILER) tool/Main.zir -o $@ -I$(INCLUDE) -lDbgHelp -lucrt

build: bin/velesc.exe bin/veles.exe

clean:
	del /Q bin\*
