################################################################################
#
# python-hwd
#
################################################################################

PYTHON_HWD_VERSION = 1907a6dbb44d0f6c0c0f9214aa2c98f1e7958389
PYTHON_HWD_SOURCE = $(PYTHON_HWD_VERSION).tar.gz
PYTHON_HWD_SITE = https://github.com/Outernet-Project/hwd/archive
PYTHON_HWD_LICENSE = GPL
PYTHON_HWD_LICENSE_FILE = COPYING
PYTHON_HWD_SETUP_TYPE = setuptools
PYTHON_PYUDEV_DEPENDENCIES = python-pyudev, python-netifaces

$(eval $(python-package))
