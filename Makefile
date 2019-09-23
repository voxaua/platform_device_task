ifneq ($(KERNELRELEASE),)
# kbuild part of makefile
obj-m  := platform_device.o
else
# normal makefile
KDIR ?= /home/vivashchenko/Documents/renesas-bsp
CC = aarch64-linux-gnu-gcc

default:
	$(MAKE) -C $(KDIR) M=$$PWD
sender:
	$(CC) sender.c -o sender
clean:
	$(MAKE) -C $(KDIR) M=$$PWD clean
endif

