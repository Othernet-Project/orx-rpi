################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 1dd0e12873fc1672164bd98269fb81508ebc5444
PYTHON_FSAL_SITE = $(call github,Outernet-Project,fsal,$(PYTHON_FSAL_VERSION))
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
