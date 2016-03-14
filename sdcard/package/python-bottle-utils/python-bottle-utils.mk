################################################################################
#
# python-bottle-utils
#
################################################################################

PYTHON_BOTTLE_UTILS_VERSION = aea085bc485f8d1c8370e96502eb598d9fb79499
PYTHON_BOTTLE_UTILS_SITE = $(call github,Outernet-Project,bottle-utils,$(PYTHON_BOTTLE_UTILS_VERSION))
PYTHON_BOTTLE_UTILS_LICENSE = GPL
PYTHON_BOTTLE_UTILS_DEPENDENCIES = python-bottle
PYTHON_BOTTLE_UTILS_SETUP_TYPE = setuptools

$(eval $(python-package))
