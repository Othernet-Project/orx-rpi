################################################################################
#
# ondd
#
################################################################################

ONDD_VERSION = 2.1.0
ONDD_SOURCE = ondd-$(ONDD_VERSION).tar.gz
ONDD_SITE = https://outernet.is
ONDD_DEPENDENCIES = openssl
ONDD_LICENSE = PROPRIETARY

define ONDD_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) INSTALL_PREFIX=$(TARGET_DIR) \
		CFLAGS=-fpermissive \
		CC=$(TARGET_CC) clean debug release install
endef

$(eval $(generic-package))
