################################################################################
#
# monitoring
#
################################################################################

MONITORING_VERSION = c94f86e088cad1df05ca809d07eed1004bcaa7df
MONITORING_SOURCE = $(MONITORING_VERSION).tar.gz
MONITORING_SITE = https://github.com/Outernet-Project/monitoring/archive
MONITORING_LICENSE = GPL
MONITORING_SETUP_TYPE = setuptools

$(eval $(python-package))
