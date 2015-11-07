################################################################################
#
# python-hwd
#
################################################################################

PYTHON_HWD_VERSION = 4a7619482bb5459d278aa265e10175c730bd9b9c
PYTHON_HWD_SOURCE = $(PYTHON_HWD_VERSION).tar.gz
PYTHON_HWD_SITE = https://github.com/Outernet-Project/hwd/archive/
PYTHON_HWD_LICENSE = GPL
PYTHON_HWD_LICENSE_FILE = COPYING
PYTHON_HWD_SETUP_TYPE = setuptools
PYTHON_PYUDEV_DEPENDENCIES = python-pyudev, python-netifaces

$(eval $(python-package))
