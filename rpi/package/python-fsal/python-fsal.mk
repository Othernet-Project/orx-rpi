################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = bd0aecc639ab6f77ca9d2e120ffa74ee3f3be020
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
