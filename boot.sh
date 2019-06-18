#!/bin/bash

QVER=v2.12.0
KVER=v5.1
RVER=2019.02.2

./qemu/$QVER/bin/qemu-system-aarch64  -M raspi3 -m 1024M  -smp 4 -kernel kernel/$KVER/Image -no-reboot  -initrd root/$RVER/rootfs.cpio.gz -dtb kernel/$KVER/bcm2710-rpi-3-b.dtb -nographic -cpu cortex-a53 -serial mon:stdio  -append ' route=172.17.0.5 root=/dev/ram0 earlycon=pl011,0x3f201000 console=ttyAMA0,115200'
