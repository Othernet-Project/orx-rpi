################################################################################
#
# python-bottle-utils-form
#
################################################################################

PYTHON_BOTTLE_UTILS_FORM_VERSION = 0.3.11
PYTHON_BOTTLE_UTILS_FORM_SOURCE = bottle-utils-form-$(PYTHON_BOTTLE_UTILS_FORM_VERSION).tar.gz
PYTHON_BOTTLE_UTILS_FORM_SITE = http://pypi.python.org/packages/source/b/bottle-utils-form/
PYTHON_BOTTLE_UTILS_FORM_LICENSE = GPL
PYTHON_BOTTLE_UTILS_FORM_DEPENDENCIES = python-bottle python-dateutil python-bottle-utils-common python-bottle-utils-html
PYTHON_BOTTLE_UTILS_FORM_SETUP_TYPE = setuptools

$(eval $(python-package))
