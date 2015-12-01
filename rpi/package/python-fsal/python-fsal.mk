################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 9db8962841b3f98b32f1886272209e1076c89cee
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
