################################################################################
#
# python-librarian
#
################################################################################

PYTHON_LIBRARIAN_VERSION = 255a7745f4312d1082535a65dd97b7ea6a79a0aa
PYTHON_LIBRARIAN_SOURCE = $(PYTHON_LIBRARIAN_VERSION).tar.gz
PYTHON_LIBRARIAN_SITE = https://github.com/Outernet-Project/librarian/archive
PYTHON_LIBRARIAN_LICENSE = GPL
PYTHON_LIBRARIAN_SETUP_TYPE = setuptools

$(eval $(python-package))
