################################################################################
#
# python-bottle-utils-html
#
################################################################################

PYTHON_BOTTLE_UTILS_HTML_VERSION = 0.3.8
PYTHON_BOTTLE_UTILS_HTML_SOURCE = bottle-utils-html-$(PYTHON_BOTTLE_UTILS_HTML_VERSION).tar.gz
PYTHON_BOTTLE_UTILS_HTML_SITE = http://pypi.python.org/packages/source/b/bottle-utils-html/
PYTHON_BOTTLE_UTILS_HTML_LICENSE = GPL
PYTHON_BOTTLE_UTILS_HTML_DEPENDENCIES = python-bottle python-dateutil python-bottle-utils-common
PYTHON_BOTTLE_UTILS_HTML_SETUP_TYPE = setuptools

$(eval $(python-package))
