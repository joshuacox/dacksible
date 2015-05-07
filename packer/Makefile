all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""  Makes an image with Ansible and docker in it
	@echo ""   1. make vbox       - your site will be in ../builds

qemu: buildqemu beep

qemudebug: buildqemudebug beep

vbox: buildvbox beep

vboxdebug: buildvboxdebug beep

buildqemudebug:
	/usr/bin/time -v packer build -debug --only=qemu dacksible-debian-7.7-i386.json

buildqemu:
	/usr/bin/time -v packer build --only=qemu dacksible-debian-7.7-i386.json

buildvboxdebug:
	/usr/bin/time -v packer build -debug --only=virtualbox-iso dacksible-debian-7.7-i386.json

buildvbox:
	/usr/bin/time -v packer build --only=virtualbox-iso dacksible-debian-7.7-i386.json

beep:
	@echo "beep"
	@aplay /usr/share/sounds/alsa/Front_Center.wav
