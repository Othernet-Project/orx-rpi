################################################################################
#
# python-librarian
#
################################################################################

PYTHON_LIBRARIAN_VERSION = a5037bb3b1e4912a6597b9b39b75ff1cd2d6fa7c
PYTHON_LIBRARIAN_SOURCE = $(PYTHON_LIBRARIAN_VERSION).tar.gz
PYTHON_LIBRARIAN_SITE = https://github.com/Outernet-Project/librarian/archive
PYTHON_LIBRARIAN_LICENSE = GPL
PYTHON_LIBRARIAN_SETUP_TYPE = setuptools

$(eval $(python-package))
