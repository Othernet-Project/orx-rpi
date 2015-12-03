################################################################################
#
# python-bottle-utils
#
################################################################################

PYTHON_BOTTLE_UTILS_VERSION = 712eae2d53a37b52b1210d4524bfa1f1f8c7b973
PYTHON_BOTTLE_UTILS_SOURCE = $(PYTHON_BOTTLE_UTILS_VERSION).tar.gz
PYTHON_BOTTLE_UTILS_SITE = https://github.com/Outernet-Project/bottle-utils/archive
PYTHON_BOTTLE_UTILS_LICENSE = GPL
PYTHON_BOTTLE_UTILS_DEPENDENCIES = python-bottle
PYTHON_BOTTLE_UTILS_SETUP_TYPE = setuptools

$(eval $(python-package))
