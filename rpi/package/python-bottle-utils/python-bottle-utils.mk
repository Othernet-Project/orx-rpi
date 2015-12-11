################################################################################
#
# python-bottle-utils
#
################################################################################

PYTHON_BOTTLE_UTILS_VERSION = 3e84700b301c97e3b0d94e207eb8f07d923da1b1
PYTHON_BOTTLE_UTILS_SOURCE = $(PYTHON_BOTTLE_UTILS_VERSION).tar.gz
PYTHON_BOTTLE_UTILS_SITE = https://github.com/Outernet-Project/bottle-utils/archive
PYTHON_BOTTLE_UTILS_LICENSE = GPL
PYTHON_BOTTLE_UTILS_DEPENDENCIES = python-bottle
PYTHON_BOTTLE_UTILS_SETUP_TYPE = setuptools

$(eval $(python-package))
