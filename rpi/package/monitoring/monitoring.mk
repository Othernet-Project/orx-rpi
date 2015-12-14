################################################################################
#
# monitoring
#
################################################################################

MONITORING_VERSION = 0e68f37bb0d5e2ac08165ca5cda1698a463f59b4
MONITORING_SOURCE = $(MONITORING_VERSION).tar.gz
MONITORING_SITE = https://github.com/Outernet-Project/monitoring/archive
MONITORING_LICENSE = GPL
MONITORING_SETUP_TYPE = setuptools

$(eval $(python-package))
