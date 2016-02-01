################################################################################
#
# python-librarian-ondd
#
################################################################################

PYTHON_LIBRARIAN_ONDD_VERSION = 3bb5ec8cddd59fd8e41e5a73cefc8ae4a14e9bf9
PYTHON_LIBRARIAN_ONDD_SOURCE = $(PYTHON_LIBRARIAN_ONDD_VERSION).tar.gz
PYTHON_LIBRARIAN_ONDD_SITE = https://github.com/Outernet-Project/librarian-ondd/archive
PYTHON_LIBRARIAN_ONDD_LICENSE = GPL
PYTHON_LIBRARIAN_ONDD_SETUP_TYPE = setuptools

$(eval $(python-package))
