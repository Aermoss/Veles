ZIRCON_PATH := $(abspath ../Zircon)
COMPILER := $(ZIRCON_PATH)/bin/zirconc.exe
INCLUDE := $(ZIRCON_PATH)/include

default: build

bin/velesc.exe: $(wildcard src/*.zir)
	$(COMPILER) src/Main.zir -o $@ -I$(INCLUDE) -lDbgHelp

build: bin/velesc.exe

clean:
	del /Q bin\velesc.*
