################################################################################
#
# monitoring
#
################################################################################

MONITORING_VERSION = b89652c7217832e5489d24480477fc5e6038fcc7
MONITORING_SITE = $(call github,Outernet-Project,monitoring,$(MONITORING_VERSION))
MONITORING_LICENSE = GPL
MONITORING_SETUP_TYPE = setuptools

$(eval $(python-package))
