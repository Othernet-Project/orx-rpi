################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 8af6335b03b777077d82afae7199279e31b8056f
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
