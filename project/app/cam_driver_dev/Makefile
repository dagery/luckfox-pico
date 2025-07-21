obj-m += ov5640.o
obj-m += ov5640_mipi.o


KDIR:=/home/simon/luckfox-pico/sysdrv/source/kernel
PWD?=$(shell pwd)
MAKE := make
ARCH := arm
CROSS_COMPILE := /home/simon/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-
KBUILD_OUTPUT := $(abspath $(dir $(lastword $(KDIR))))/objs_kernel
all:
	$(MAKE) O=$(KBUILD_OUTPUT) -C $(KDIR) M=$(PWD) modules \
ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE)
	echo $(PWD)
clean:
	rm -f *.ko *.o *.mod *.mod.o *.mod.c *.symvers *.order
