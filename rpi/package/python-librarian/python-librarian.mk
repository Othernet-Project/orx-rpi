################################################################################
#
# python-librarian
#
################################################################################

PYTHON_LIBRARIAN_VERSION = 0.2
PYTHON_LIBRARIAN_SOURCE = librarian-$(PYTHON_LIBRARIAN_VERSION).tar.gz
PYTHON_LIBRARIAN_SITE = https://github.com/Outernet-Project/librarian/releases/download/v$(PYTHON_LIBRARIAN_VERSION)/
PYTHON_LIBRARIAN_LICENSE = GPL
PYTHON_LIBRARIAN_SETUP_TYPE = setuptools

$(eval $(python-package))
