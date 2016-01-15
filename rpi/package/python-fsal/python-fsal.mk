################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 45a8bd643ba222d181f1fa8c178093d566d76215
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
