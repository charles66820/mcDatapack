mkfilePath := $(abspath $(lastword $(MAKEFILE_LIST)))
prjPath := $(dir $(mkfilePath))
prjDir := $(notdir $(patsubst %/,%,$(prjPath)))

archive := $(prjDir).mcpack
archivePath := $(prjPath)$(archive)

all:
	cd $(prjPath)src && zip -o $(archivePath) -r * && cd $(prjPath)

debug: clean all
	scp ./cornicraftRessourceBedrock.mcpack magicorp:/srv/git/batrenisAPI/servers/cornicraft/plugins/Geyser-Spigot/packs/ && echo "Do the following command on minecraft server: /geyser reload"

clean:
	rm -f $(archivePath)
