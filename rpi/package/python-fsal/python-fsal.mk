################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 8c5993e9a32e0398104cd75d1f7c16f311e1b676
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
