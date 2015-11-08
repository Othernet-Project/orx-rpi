################################################################################
#
# python-librarian
#
################################################################################

PYTHON_LIBRARIAN_VERSION = e4d8dd7a4f607f939d26d6df789af454159d5454
PYTHON_LIBRARIAN_SOURCE = $(PYTHON_LIBRARIAN_VERSION).tar.gz
PYTHON_LIBRARIAN_SITE = https://github.com/Outernet-Project/librarian/archive
PYTHON_LIBRARIAN_LICENSE = GPL
PYTHON_LIBRARIAN_SETUP_TYPE = setuptools

$(eval $(python-package))
