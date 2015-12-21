################################################################################
#
# monitoring
#
################################################################################

MONITORING_VERSION = b89652c7217832e5489d24480477fc5e6038fcc7
MONITORING_SOURCE = $(MONITORING_VERSION).tar.gz
MONITORING_SITE = https://github.com/Outernet-Project/monitoring/archive
MONITORING_LICENSE = GPL
MONITORING_SETUP_TYPE = setuptools

$(eval $(python-package))
