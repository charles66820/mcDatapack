datapacksDir = /mnt/game/minecraft/minecraft/saves/test_cmd/datapacks

mkfilePath := $(abspath $(lastword $(MAKEFILE_LIST)))
prjPath := $(dir $(mkfilePath))
prjDir := $(notdir $(patsubst %/,%,$(prjPath)))

archive := $(prjDir).zip
archivePath := $(prjPath)$(archive)

all:
	cd $(prjPath)src && zip -o $(archivePath) -r * && cd $(prjPath)

debug: all
	cp $(archivePath) $(datapacksDir)/

clean:
	rm -f $(archivePath)
