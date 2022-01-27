datapacksDir = /mnt/game/minecraft/cmod/saves/test/datapacks
gitPath := $(HOME)/github

mkfilePath := $(abspath $(lastword $(MAKEFILE_LIST)))
prjPath := $(dir $(mkfilePath))
prjDir := $(notdir $(patsubst %/,%,$(prjPath)))

archive := $(prjDir).zip
archivePath := $(prjPath)$(archive)

all:
	cd $(prjPath)src && zip -o $(archivePath) -r * && cd $(prjPath)
	cp $(archivePath) $(gitPath)/cornicraftConfig/world/datapacks/

debug: all
	cp $(archivePath) $(datapacksDir)/

clean:
	rm -f $(archivePath)
