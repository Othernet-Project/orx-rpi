B := rpi

include $(B).mk

# Board-agnostic settings
BUILDROOT = ./buildroot
CONFIG = $(OUTPUT)/.config
BOARD_DIR = ./$(BOARD)
VERSION := $(shell cat $(BOARD_DIR)/version)
PLATFORM := $(shell cat $(BOARD_DIR)/platform)

# Build target
TARGET_DIR := images
TARGET_FILE_NAME=$(TARGET_NAME)-$(VERSION).$(TARGET_EXT)
TARGET_MD5_NAME=$(TARGET_NAME)-$(VERSION).md5
TARGET_FILE = $(TARGET_DIR)/$(TARGET_FILE_NAME)
TARGET_MD5 = $(TARGET_DIR)/$(TARGET_MD5_NAME)

# Build output files
# Build output files
OUTPUT = build/$(B)
OUTPUT_DIR = ../$(OUTPUT)
IMAGES_DIR = $(OUTPUT)/images
IMAGE_FILE := $(IMAGES_DIR)/zImage

# External dir
EXTERNAL = .$(BOARD_DIR)
export BR2_EXTERNAL=$(EXTERNAL)

.PHONY: default version build image menuconfig linux-menuconfig \
	busybox-menuconfig saveconfig config help clean-build clean

default: md5

version:
	@echo v$(VERSION)

build: $(TARGET_MD5)

rebuild: clean-build build

md5: $(TARGET_MD5)

image: $(TARGET_FIE)

menuconfig: $(CONFIG)
	@make -C $(BUILDROOT) O=$(OUTPUT_DIR) menuconfig

linux-menuconfig: $(CONFIG)
	@make -C $(BUILDROOT) O=$(OUTPUT_DIR) linux-menuconfig

busybox-menuconfig: $(CONFIG)
	@make -C $(BUILDROOT) O=$(OUTPUT_DIR) busybox-menuconfig

saveconfig: $(CONFIG)
	@make -C $(BUILDROOT) O=$(OUTPUT_DIR) savedefconfig
	@make -C $(BUILDROOT) O=$(OUTPUT_DIR) linux-update-defconfig
	@make -C $(BUILDROOT) O=$(OUTPUT_DIR) busybox-update-config

config: $(CONFIG)

help:
	@cat HELP

clean-build:
	@-rm $(IMAGE_FILE)
	@-rm $(IMAGES_DIR)/rootfs*

clean: $(OUTPUT)
	-rm -rf $(OUTPUT)

$(TARGET_MD5): $(TARGET_FILE)
	cd $(TARGET_DIR); md5sum "$(TARGET_FILE_NAME)" > "$(TARGET_MD5_NAME)"

$(TARGET_FILE): $(IMAGE_FILE) $(TARGET_DIR)
	zip -j "$@" "$<" $(IMAGES_DIR)/*.dtb $(IMAGES_DIR)/rpi-firmware/*

$(TAGET_DIR):
	mkdir -p $@

$(IMAGE_FILE): $(CONFIG)
	@make -C $(BUILDROOT) O=$(OUTPUT_DIR)

$(CONFIG):
	@make -C $(BUILDROOT) O=$(OUTPUT_DIR) orx_defconfig

.DEFAULT:
	@make -C $(BUILDROOT) O=$(OUTPUT_DIR) $@
