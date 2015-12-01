################################################################################
#
# python-librarian-setup
#
################################################################################

PYTHON_LIBRARIAN_SETUP_VERSION = 6d17b14f6867b250c542ab51daf92769ac868818
PYTHON_LIBRARIAN_SETUP_SOURCE = $(PYTHON_LIBRARIAN_SETUP_VERSION).tar.gz
PYTHON_LIBRARIAN_SETUP_SITE = https://github.com/Outernet-Project/librarian-setup/archive
PYTHON_LIBRARIAN_SETUP_LICENSE = GPL
PYTHON_LIBRARIAN_SETUP_DEPENDENCIES = python-librarian-core
PYTHON_LIBRARIAN_SETUP_SETUP_TYPE = setuptools

$(eval $(python-package))
