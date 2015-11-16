################################################################################
#
# monitoring
#
################################################################################

MONITORING_VERSION = 1536ec66547345b8bdba6fb756fd15a1b2e08f0c
MONITORING_SOURCE = $(MONITORING_VERSION).tar.gz
MONITORING_SITE = https://github.com/Outernet-Project/monitoring/archive
MONITORING_LICENSE = GPL

define MONITORING_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -D $(@D)/client/monitor.py $(TARGET_DIR)/usr/sbin/monitor
endef

$(eval $(generic-package))
