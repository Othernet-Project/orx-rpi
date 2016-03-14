################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 935b7fefbc5df3ca3d7e59709908a94f4e9e77e7
PYTHON_FSAL_SITE = $(call github,Outernet-Project,fsal,$(PYTHON_FSAL_VERSION))
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
