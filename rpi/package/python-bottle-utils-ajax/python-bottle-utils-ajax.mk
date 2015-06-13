################################################################################
#
# python-bottle-utils-ajax
#
################################################################################

PYTHON_BOTTLE_UTILS_AJAX_VERSION = 0.3.1
PYTHON_BOTTLE_UTILS_AJAX_SOURCE = bottle-utils-ajax-$(PYTHON_BOTTLE_UTILS_AJAX_VERSION).tar.gz
PYTHON_BOTTLE_UTILS_AJAX_SITE = http://pypi.python.org/packages/source/b/bottle-utils-ajax/
PYTHON_BOTTLE_UTILS_AJAX_LICENSE = GPL
PYTHON_BOTTLE_UTILS_AJAX_DEPENDENCIES = python-bottle
PYTHON_BOTTLE_UTILS_AJAX_SETUP_TYPE = setuptools

$(eval $(python-package))
