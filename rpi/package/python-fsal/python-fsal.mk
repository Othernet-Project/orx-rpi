################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = e53ffba8d243f51a7732053587ba952a465f642e
PYTHON_FSAL_SOURCE = $(PYTHON_FSAL_VERSION).tar.gz
PYTHON_FSAL_SITE = https://github.com/Outernet-Project/fsal/archive
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
