################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 407a78b15db6fff0dc6cbeaf0acc600c666c9a32
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
