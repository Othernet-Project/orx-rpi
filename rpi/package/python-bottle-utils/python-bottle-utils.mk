################################################################################
#
# python-bottle-utils
#
################################################################################

PYTHON_BOTTLE_UTILS_VERSION = 0.7
PYTHON_BOTTLE_UTILS_SOURCE = bottle-utils-$(PYTHON_BOTTLE_UTILS_VERSION).tar.gz
PYTHON_BOTTLE_UTILS_SITE = http://pypi.python.org/packages/source/b/bottle-utils
PYTHON_BOTTLE_UTILS_LICENSE = GPL
PYTHON_BOTTLE_UTILS_DEPENDENCIES = python-bottle
PYTHON_BOTTLE_UTILS_SETUP_TYPE = setuptools

$(eval $(python-package))
