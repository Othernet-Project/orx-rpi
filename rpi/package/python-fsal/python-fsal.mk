################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = cf7d88ace51cfa1b0b3fde04cf7b39f63d8a9ac5
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
