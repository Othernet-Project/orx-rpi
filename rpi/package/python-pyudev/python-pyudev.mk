################################################################################
#
# python-pyudev
#
################################################################################

PYTHON_PYUDEV_VERSION = 0.17
PYTHON_PYUDEV_SOURCE = pyudev-$(PYTHON_PYUDEV_VERSION).tar.gz
PYTHON_PYUDEV_SITE = https://pypi.python.org/packages/source/p/pyudev
PYTHON_PYUDEV_LICENSE = LGPL
PYTHON_PYUDEV_LICENSE_FILE = COPYING
PYTHON_PYUDEV_SETUP_TYPE = setuptools
PYTHON_PYUDEV_DEPENDENCIES = eudev

$(eval $(python-package))
