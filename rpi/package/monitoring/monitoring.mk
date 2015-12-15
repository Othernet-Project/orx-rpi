################################################################################
#
# monitoring
#
################################################################################

MONITORING_VERSION = e15dc2a2a07d6edb504a74e0ade0705510882338
MONITORING_SOURCE = $(MONITORING_VERSION).tar.gz
MONITORING_SITE = https://github.com/Outernet-Project/monitoring/archive
MONITORING_LICENSE = GPL
MONITORING_SETUP_TYPE = setuptools

$(eval $(python-package))
