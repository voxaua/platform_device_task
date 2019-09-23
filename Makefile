ifneq ($(KERNELRELEASE),)
# kbuild part of makefile
obj-m  := platform_device.o
else
# normal makefile
KDIR ?= /home/vivashchenko/Documents/renesas-bsp

default:
	$(MAKE) -C $(KDIR) M=$$PWD
clean:
	$(MAKE) -C $(KDIR) M=$$PWD clean
endif

