mkfilePath := $(abspath $(lastword $(MAKEFILE_LIST)))
prjPath := $(dir $(mkfilePath))
prjDir := $(notdir $(patsubst %/,%,$(prjPath)))

archive := $(prjDir).zip
archivePath := $(prjPath)$(archive)


all:
	cd $(prjPath)src && zip -o $(archivePath) -r * && cd $(prjPath)

clean:
	rm -f $(archivePath)
