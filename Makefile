B := rpi
BOARD = $(B)
BOARD_DIR = ./$(BOARD)
VERSION := $(shell cat $(BOARD_DIR)/version)
PLATFORM := $(shell cat $(BOARD_DIR)/platform)
IMAGE_FILE := images/$(PLATFORM)-$(VERSION).img
IMAGE_FILE_GZ = $(IMAGE_FILE).gz
IMAGE_FILE_ZIP = $(IMAGE_FILE).zip
IMAGE_FILE_MD5SUM = $(IMAGE_FILE).md5
UPDATE_ZIP = images/$(PLATFORM)-update-$(VERSION).zip

SD_CARD := /dev/sdb

BUILDROOT = ./buildroot
CONFIG = $(BUILDROOT)/.config
OUTPUT = $(BUILDROOT)/output
IMAGES_DIR = $(OUTPUT)/images
KERNEL_IMAGE = $(IMAGES_DIR)/zImage
TOOLS_DIR = tools

EXTERNAL = .$(BOARD_DIR)
export BR2_EXTERNAL=$(EXTERNAL)

.PHONY: default version build sdcard gzimage zipimage update image menuconfig linux-menuconfig busybox-menuconfig saveconfig config help clean-build clean

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
	md5sum $(IMAGE_FILE_GZ) | sed 's|images/||' > $(IMAGE_FILE_GZ).md5

zipimage: $(IMAGE_FILE)
	zip -j $(IMAGE_FILE_ZIP) $<
	md5sum $(IMAGE_FILE_ZIP) | sed 's|images/||' > $(IMAGE_FILE_ZIP).md5

update: $(KERNEL_IMAGE)
	zip -j $(UPDATE_ZIP) $<
	md5sum $(UPDATE_ZIP) | sed 's|images/||' > $(UPDATE_ZIP).md5

image: $(IMAGE_FILE)

$(IMAGE_FILE): $(KERNEL_IMAGE)
	@$(TOOLS_DIR)/mkimage.sh "$@"

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

clean-build:
	@-rm $(KERNEL_IMAGE)
	@-rm $(IMAGES_DIR)/rootfs*

clean:
	@make -C $(BUILDROOT) clean
