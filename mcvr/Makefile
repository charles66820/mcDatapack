datapacksDir = /mnt/game/minecraft/cmod/saves/testvr/datapacks

mkfilePath := $(abspath $(lastword $(MAKEFILE_LIST)))
prjPath := $(dir $(mkfilePath))
prjDir := $(notdir $(patsubst %/,%,$(prjPath)))

archive := $(prjDir).zip
archivePath := $(prjPath)$(archive)

all: clean
	cd $(prjPath)src && zip -o $(archivePath) -r * && cd $(prjPath)

debug: all
	cp $(archivePath) $(datapacksDir)/

clean:
	rm -f $(archivePath)
