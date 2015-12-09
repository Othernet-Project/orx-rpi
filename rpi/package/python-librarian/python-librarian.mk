################################################################################
#
# python-librarian
#
################################################################################

PYTHON_LIBRARIAN_VERSION = 3a372b7e4220ab02a8eaed0a1b0b87cc8b757f07
PYTHON_LIBRARIAN_SOURCE = $(PYTHON_LIBRARIAN_VERSION).tar.gz
PYTHON_LIBRARIAN_SITE = https://github.com/Outernet-Project/librarian/archive
PYTHON_LIBRARIAN_LICENSE = GPL
PYTHON_LIBRARIAN_SETUP_TYPE = setuptools

$(eval $(python-package))
