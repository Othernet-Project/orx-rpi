################################################################################
#
# python-librarian-ondd
#
################################################################################

PYTHON_LIBRARIAN_ONDD_VERSION = 0b36502c0ad9294079aa69d9b0bc5e9b1b52da21
PYTHON_LIBRARIAN_ONDD_SOURCE = $(PYTHON_LIBRARIAN_ONDD_VERSION).tar.gz
PYTHON_LIBRARIAN_ONDD_SITE = https://github.com/Outernet-Project/librarian-ondd/archive
PYTHON_LIBRARIAN_ONDD_LICENSE = GPL
PYTHON_LIBRARIAN_ONDD_SETUP_TYPE = setuptools

$(eval $(python-package))
