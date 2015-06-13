B := rpi
BOARD = $(B)
BOARD_DIR = ./$(BOARD)
VERSION := $(shell cat $(BOARD_DIR)/version)
PLATFORM := $(shell cat $(BOARD_DIR)/platform)
IMAGE_FILE := $(PLATFORM)-$(VERSION).img
IMAGE_FILE_GZ = $(IMAGE_FILE).gz
IMAGE_FILE_ZIP = $(IMAGE_FILE).zip
IMAGE_FILE_MD5SUM = $(IMAGE_FILE).md5
UPDATE_ZIP = $(PLATFORM)-update-$(VERSION).zip

SD_CARD := /dev/sdb

BUILDROOT = ./buildroot
CONFIG = $(BUILDROOT)/.config
OUTPUT = $(BUILDROOT)/output
IMAGES_DIR = $(OUTPUT)/images
KERNEL_IMAGE = $(IMAGES_DIR)/zImage

EXTERNAL = .$(BOARD_DIR)
export BR2_EXTERNAL=$(EXTERNAL)

.PHONY: clean build

default: build

version:
	@echo v$(VERSION)

build: $(KERNEL_IMAGE)

sdcard: $(SD_CARD) $(IMAGE_FILE)
	@read -p "Press ENTER to write image to $<..."
	@cat $(IMAGE_FILE) | dd of=$< bs=1M
	@sync

gzimage: $(IMAGE_FILE)
	gzip $(IMAGE_FILE)
	md5sum $(IMAGE_FILE_GZ) > $(IMAGE_FILE_GZ).md5

zipimage: $(IMAGE_FILE)
	zip $(IMAGE_FILE_ZIP) $(IMAGE_FILE)
	md5sum $(IMAGE_FILE_ZIP) > $(IMAGE_FILE_ZIP).md5

update: $(KERNEL_IMAGE)
	zip $(UPDATE_ZIP) $<
	md5sum $(UPDATE_ZIP) > $(UPDATE_ZIP).md5

image: $(IMAGE_FILE)

$(IMAGE_FILE): $(KERNEL_IMAGE)
	@$(BOARD_DIR)/tools/mkimage.sh

$(KERNEL_IMAGE): $(CONFIG)
	@make -C $(BUILDROOT) 

menuconfig: $(CONFIG)
	@make -C $(BUILDROOT) menuconfig

linux-menuconfig: $(CONFIG)
	@make -C $(BUILDROOT) linux-menuconfig

busybox-menuconfig: $(CONFIG)
	@make -C $(BUILDROOT) busybox-menuconfig

saveconfig: $(CONFIG)
	@make -C $(BUILDROOT) savedefconfig
	@make -C $(BUILDROOT) linux-update-defconfig
	@make -C $(BUILDROOT) busybox-update-config

config: $(CONFIG)

$(CONFIG):
	@make -C $(BUILDROOT) orx_defconfig

help:
	@cat HELP

clean-linux:
	@make -C $(OUTPUT)/build/linux-custom clean

clean-librarian:
	@rm -rf $(OUTPUT)/build/python-librarian

clean-build:
	@-rm $(KERNEL_IMAGE)
	@-rm $(IMAGES_DIR)/rootfs*
	@-rm $(IMAGE_FILE)*

clean:
	@make -C $(BUILDROOT) clean
	@-rm $(IMAGE_FILE)*
