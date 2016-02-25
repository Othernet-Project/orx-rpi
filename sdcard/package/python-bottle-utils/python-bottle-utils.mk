################################################################################
#
# python-bottle-utils
#
################################################################################

PYTHON_BOTTLE_UTILS_VERSION = aea085bc485f8d1c8370e96502eb598d9fb79499
PYTHON_BOTTLE_UTILS_SOURCE = $(PYTHON_BOTTLE_UTILS_VERSION).tar.gz
PYTHON_BOTTLE_UTILS_SITE = https://github.com/Outernet-Project/bottle-utils/archive
PYTHON_BOTTLE_UTILS_LICENSE = GPL
PYTHON_BOTTLE_UTILS_DEPENDENCIES = python-bottle
PYTHON_BOTTLE_UTILS_SETUP_TYPE = setuptools

$(eval $(python-package))
