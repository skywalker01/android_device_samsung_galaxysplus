#!/sbin/sh
dd if=/dev/zero of=/dev/block/mmcblk0p14 bs=512 count=10240 > /dev/null 2>&1 ; sync
