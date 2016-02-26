################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 58b26a82898c70f1fc1835a9eb467f0cd9e08a45
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
