################################################################################
#
# python-pyhostapdconf
#
################################################################################

PYTHON_PYHOSTAPDCONF_VERSION = c7f11668449eca3c73a3606b4072150888025014
PYTHON_PYHOSTAPDCONF_SOURCE = $(PYTHON_PYHOSTAPDCONF_VERSION).tar.gz
PYTHON_PYHOSTAPDCONF_SITE = https://github.com/Outernet-Project/pyhostapdconf/archive
PYTHON_PYHOSTAPDCONF_LICENSE = GPL
PYTHON_PYHOSTAPDCONF_LICENSE_FILE = COPYING
PYTHON_PYHOSTAPDCONF_SETUP_TYPE = setuptools

$(eval $(python-package))
