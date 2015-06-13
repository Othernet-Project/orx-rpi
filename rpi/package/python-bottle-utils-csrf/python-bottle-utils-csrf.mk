################################################################################
#
# python-bottle-utils-csrf
#
################################################################################

PYTHON_BOTTLE_UTILS_CSRF_VERSION = 0.3.2
PYTHON_BOTTLE_UTILS_CSRF_SOURCE = bottle-utils-csrf-$(PYTHON_BOTTLE_UTILS_CSRF_VERSION).tar.gz
PYTHON_BOTTLE_UTILS_CSRF_SITE = http://pypi.python.org/packages/source/b/bottle-utils-csrf/
PYTHON_BOTTLE_UTILS_CSRF_LICENSE = GPL
PYTHON_BOTTLE_UTILS_CSRF_DEPENDENCIES = python-bottle python-bottle-utils-common python-bottle-utils-html
PYTHON_BOTTLE_UTILS_CSRF_SETUP_TYPE = setuptools

$(eval $(python-package))
