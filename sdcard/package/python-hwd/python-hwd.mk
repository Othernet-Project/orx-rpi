################################################################################
#
# python-hwd
#
################################################################################

PYTHON_HWD_VERSION = 1907a6dbb44d0f6c0c0f9214aa2c98f1e7958389
PYTHON_HWD_SITE = $(call github,Outernet-Project,hwd,$(PYTHON_HWD_VERSION))
PYTHON_HWD_LICENSE = GPL
PYTHON_HWD_LICENSE_FILE = COPYING
PYTHON_HWD_SETUP_TYPE = setuptools

$(eval $(python-package))
