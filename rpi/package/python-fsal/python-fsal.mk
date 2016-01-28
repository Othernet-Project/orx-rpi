################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 49a48416ee600913a757329511f7bf1ec0083802
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
