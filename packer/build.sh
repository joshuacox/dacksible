#!/bin/bash
#sed -i 's/d-i\ mirror\/http\/proxy\ string/d-i\ mirror\/http\/proxy\ string\ http:\/\/65.67.51.187:3142/' http/debian-7/preseed.cfg
#/usr/bin/time -v packer build -debug --only=virtualbox-iso pdd-debian-7.7-i386.json
#/usr/bin/time -v packer build --only=virtualbox-iso pdd-debian-7.7-i386.json
#/usr/bin/time -v packer build -debug --only=qemu pdd-debian-7.7-i386.json
/usr/bin/time -v packer build --only=qemu dacksible-debian-7.7-i386.json
#sed -i 's/d-i\ mirror\/http\/proxy\ string\ http:\/\/65.67.51.187:3142/d-i\ mirror\/http\/proxy\ string/' http/debian-7/preseed.cfg
# beeper
aplay /usr/share/sounds/alsa/Front_Center.wav
ogg123 /usr/share/sounds/KDE-Im-Irc-Event.ogg
