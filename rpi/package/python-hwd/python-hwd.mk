################################################################################
#
# python-hwd
#
################################################################################

PYTHON_HWD_VERSION = 91656984d0c5d9dd9e72e00a7f806bfc03c00afa
PYTHON_HWD_SOURCE = $(PYTHON_HWD_VERSION).tar.gz
PYTHON_HWD_SITE = https://github.com/Outernet-Project/hwd/archive
PYTHON_HWD_LICENSE = GPL
PYTHON_HWD_LICENSE_FILE = COPYING
PYTHON_HWD_SETUP_TYPE = setuptools
PYTHON_PYUDEV_DEPENDENCIES = python-pyudev, python-netifaces

$(eval $(python-package))
