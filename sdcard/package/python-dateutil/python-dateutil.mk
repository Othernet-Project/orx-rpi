################################################################################
#
# python-dateutil
#
################################################################################

PYTHON_DATEUTIL_VERSION = 2.4.2
PYTHON_DATEUTIL_SOURCE = python-dateutil-$(PYTHON_DATEUTIL_VERSION).tar.gz
PYTHON_DATEUTIL_SITE = https://pypi.python.org/packages/source/p/python-dateutil
PYTHON_DATEUTIL_LICENSE = BSD
PYTHON_DATEUTIL_LICENSE_FILES = LICENSE
PYTHON_DATEUTIL_DEPENDENCIES = python-six
PYTHON_DATEUTIL_SETUP_TYPE = setuptools

$(eval $(python-package))
