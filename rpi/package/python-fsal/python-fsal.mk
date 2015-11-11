################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 1e268dbc5d1db937616f7137e6f6d6c6440921af
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_DEPENDENCIES = python-gevent python-sqlize python-dateutil python-setuptools
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
