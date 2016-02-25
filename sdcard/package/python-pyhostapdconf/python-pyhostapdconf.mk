################################################################################
#
# python-pyhostapdconf
#
################################################################################

PYTHON_PYHOSTAPDCONF_VERSION = e4c65e3eafd512f1019bda824d5d0bb6174b3df1
PYTHON_PYHOSTAPDCONF_SOURCE = $(PYTHON_PYHOSTAPDCONF_VERSION).tar.gz
PYTHON_PYHOSTAPDCONF_SITE = https://github.com/Outernet-Project/pyhostapdconf/archive
PYTHON_PYHOSTAPDCONF_LICENSE = GPL
PYTHON_PYHOSTAPDCONF_LICENSE_FILE = COPYING
PYTHON_PYHOSTAPDCONF_SETUP_TYPE = setuptools

$(eval $(python-package))
