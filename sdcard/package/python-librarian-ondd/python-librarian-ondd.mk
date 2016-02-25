################################################################################
#
# python-librarian-ondd
#
################################################################################

PYTHON_LIBRARIAN_ONDD_VERSION = 70d333efe880d7f5a81b27f7b39b142599db5e9d
PYTHON_LIBRARIAN_ONDD_SOURCE = $(PYTHON_LIBRARIAN_ONDD_VERSION).tar.gz
PYTHON_LIBRARIAN_ONDD_SITE = https://github.com/Outernet-Project/librarian-ondd/archive
PYTHON_LIBRARIAN_ONDD_LICENSE = GPL
PYTHON_LIBRARIAN_ONDD_SETUP_TYPE = setuptools

$(eval $(python-package))
