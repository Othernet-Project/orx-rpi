################################################################################
#
# python-hwd
#
################################################################################

PYTHON_HWD_VERSION = 022c680d45f8328beb5b3c4ed4dddd4e15ef73dc
PYTHON_HWD_SOURCE = $(PYTHON_HWD_VERSION).tar.gz
PYTHON_HWD_SITE = https://github.com/Outernet-Project/hwd/archive
PYTHON_HWD_LICENSE = GPL
PYTHON_HWD_LICENSE_FILE = COPYING
PYTHON_HWD_SETUP_TYPE = setuptools
PYTHON_PYUDEV_DEPENDENCIES = python-pyudev, python-netifaces

$(eval $(python-package))
