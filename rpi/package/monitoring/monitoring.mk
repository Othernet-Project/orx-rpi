################################################################################
#
# monitoring
#
################################################################################

MONITORING_VERSION = fbde6c34806cfc940d68465c62655960e55b52d9
MONITORING_SOURCE = $(MONITORING_VERSION).tar.gz
MONITORING_SITE = https://github.com/Outernet-Project/monitoring/archive
MONITORING_LICENSE = GPL
MONITORING_SETUP_TYPE = setuptools

$(eval $(python-package))
