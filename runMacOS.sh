#!/bin/bash
cd "$(dirname "$0")"

qemu-system-ppc \
	-L pc-bios \
	-M mac99,via=pmu \
	-prom-env "boot-args=-v" \
	-m 1024 \
	-boot c \
	-drive file=HDD.img,format=raw,media=disk
	#-drive file=disk1.iso,format=raw,media=cdrom \

