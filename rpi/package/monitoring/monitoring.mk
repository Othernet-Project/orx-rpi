################################################################################
#
# monitoring
#
################################################################################

MONITORING_VERSION = 9e8488e1e2574067e5a3656ebe7029ddcc962c42
MONITORING_SOURCE = $(MONITORING_VERSION).tar.gz
MONITORING_SITE = https://github.com/Outernet-Project/monitoring/archive
MONITORING_LICENSE = GPL

define MONITORING_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -D $(@D)/client/monitor.py $(TARGET_DIR)/usr/sbin/monitor
endef

$(eval $(generic-package))
