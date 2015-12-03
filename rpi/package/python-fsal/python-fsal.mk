################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 10391e5337e17e6fd57057c1490a24a76585766e
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
