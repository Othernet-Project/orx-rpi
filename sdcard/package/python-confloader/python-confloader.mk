################################################################################
#
# python-confloader
#
################################################################################

PYTHON_CONFLOADER_VERSION = 3809f47bac00d998809e6dd797343642b3dad462
PYTHON_CONFLOADER_SITE = $(call github,Outernet-Project,confloader,$(PYTHON_CONFLOADER_VERSION))
PYTHON_CONFLOADER_LICENSE = GPL
PYTHON_BEAUTIFULSOUP4_LICENSE_FILES = LICENSE
PYTHON_CONFLOADER_SETUP_TYPE = setuptools

$(eval $(python-package))
