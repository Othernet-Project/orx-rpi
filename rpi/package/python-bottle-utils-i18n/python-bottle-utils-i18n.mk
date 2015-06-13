################################################################################
#
# python-bottle-utils-i18n
#
################################################################################

PYTHON_BOTTLE_UTILS_I18N_VERSION = 0.3.5
PYTHON_BOTTLE_UTILS_I18N_SOURCE = bottle-utils-i18n-$(PYTHON_BOTTLE_UTILS_I18N_VERSION).tar.gz
PYTHON_BOTTLE_UTILS_I18N_SITE = http://pypi.python.org/packages/source/b/bottle-utils-i18n/
PYTHON_BOTTLE_UTILS_I18N_LICENSE = GPL
PYTHON_BOTTLE_UTILS_I18N_DEPENDENCIES = python-bottle-utils-common python-bottle-utils-lazy
PYTHON_BOTTLE_UTILS_I18N_SETUP_TYPE = setuptools

$(eval $(python-package))
