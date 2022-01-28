#!/bin/bash
cd "$(dirname "$0")"

qemu-system-ppc \
	-L pc-bios \
	-M mac99,via=pmu \
	-prom-env "boot-args=-v" \
	-m 512 \
	-boot d \
	-drive file=install.iso,format=raw,media=cdrom \
	-drive file=HDD.img,format=raw,media=disk
