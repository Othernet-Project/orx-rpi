################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = ecec63f8164cd991ae8b8a85da5370504630ee29
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
