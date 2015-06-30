ifneq ($(KERNELRELEASE),)
	obj-m := LEDBlink.o
else
	KERNELDIR ?= /lib/modules/$(shell uname -r)/build
	PWD := $(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
endif

clean:
	rm -r LEDBlink.mod.c LEDBlink.o Module.symvers LEDBlink.ko LEDBlink.mod.o modules.order
