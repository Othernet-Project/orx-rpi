################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 4a6145693eb48138fefe543ca3a8fde8ac090e0d
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
