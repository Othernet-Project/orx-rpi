################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 0ac568911ebff368d1127c92f3e2dfad56f47495
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
