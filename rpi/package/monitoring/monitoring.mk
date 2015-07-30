################################################################################
#
# monitoring
#
################################################################################

MONITORING_VERSION = 9d0b8db5d9498b8c9fd303791058e03cac6e9b50
MONITORING_SOURCE = $(MONITORING_VERSION).tar.gz
MONITORING_SITE = https://github.com/Outernet-Project/monitoring/archive/
MONITORING_LICENSE = GPL

define MONITORING_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -D $(@D)/client/monitor.py $(TARGET_DIR)/usr/sbin/monitor
endef

$(eval $(generic-package))
