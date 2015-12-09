################################################################################
#
# python-librarian-ondd
#
################################################################################

PYTHON_LIBRARIAN_ONDD_VERSION = c2ed302938dc1e842ab57d75de077f88ebef8d87
PYTHON_LIBRARIAN_ONDD_SOURCE = $(PYTHON_LIBRARIAN_ONDD_VERSION).tar.gz
PYTHON_LIBRARIAN_ONDD_SITE = https://github.com/Outernet-Project/librarian-ondd/archive
PYTHON_LIBRARIAN_ONDD_LICENSE = GPL
PYTHON_LIBRARIAN_ONDD_SETUP_TYPE = setuptools

$(eval $(python-package))
