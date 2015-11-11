################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 14720ebb6705dec6e885a31f42b8c171ba76b55f
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_DEPENDENCIES = python-gevent python-sqlize python-dateutil python-setuptools
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
