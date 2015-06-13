################################################################################
#
# python-bottle-utils-common
#
################################################################################

PYTHON_BOTTLE_UTILS_COMMON_VERSION = 0.3.1
PYTHON_BOTTLE_UTILS_COMMON_SOURCE = bottle-utils-common-$(PYTHON_BOTTLE_UTILS_COMMON_VERSION).tar.gz
PYTHON_BOTTLE_UTILS_COMMON_SITE = http://pypi.python.org/packages/source/b/bottle-utils-common/
PYTHON_BOTTLE_UTILS_COMMON_LICENSE = GPL
PYTHON_BOTTLE_UTILS_COMMON_DEPENDENCIES = python-bottle python-dateutil
PYTHON_BOTTLE_UTILS_COMMON_SETUP_TYPE = setuptools

$(eval $(python-package))
