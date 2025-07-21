#!/bin/bash
export ARCH=arm

export CROSS_COMPILE=/home/simon/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-

make

echo "upload over adb"

adb shell rm /oem/usr/ko/ov5640_mipi.ko
adb push ov5640_mipi.ko /oem/usr/ko/

make clean
