################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 2249b755722df033888b6a5600d10ff0c864fb7e
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
