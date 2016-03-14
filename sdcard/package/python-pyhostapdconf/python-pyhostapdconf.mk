################################################################################
#
# python-pyhostapdconf
#
################################################################################

PYTHON_PYHOSTAPDCONF_VERSION = e4c65e3eafd512f1019bda824d5d0bb6174b3df1
PYTHON_PYHOSTAPDCONF_SITE = $(call github,Outernet-Project,pyhostapdconf,$(PYTHON_PYHOSTAPDCONF_VERSION))
PYTHON_PYHOSTAPDCONF_LICENSE = GPL
PYTHON_PYHOSTAPDCONF_LICENSE_FILE = COPYING
PYTHON_PYHOSTAPDCONF_SETUP_TYPE = setuptools

$(eval $(python-package))
