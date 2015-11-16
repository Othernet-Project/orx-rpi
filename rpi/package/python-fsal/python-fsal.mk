################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 151f9671e99098b7ace386b8301ede60721a9d0a
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_DEPENDENCIES = python-gevent python-sqlize python-dateutil python-setuptools
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
