################################################################################
#
# python-cssmin
#
################################################################################

PYTHON_CSSMIN_VERSION = 0.2.0
PYTHON_CSSMIN_SOURCE = cssmin-$(PYTHON_CSSMIN_VERSION).tar.gz
PYTHON_CSSMIN_SITE = https://pypi.python.org/packages/source/c/cssmin
PYTHON_CSSMIN_LICENSE = MIT
PYTHON_CSSMIN_LICENSE_FILES = LICENSE
PYTHON_CSSMIN_SETUP_TYPE = setuptools

$(eval $(python-package))
