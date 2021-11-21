resourcepacksDir = /mnt/game/minecraft/cmod/resourcepacks
archive = pack.zip

all:
	cd src && zip -o ../$(archive) -r * && cd ..
	cp $(archive) $(resourcepacksDir)/$(archive)

clean:
	rm -f $(archive)
