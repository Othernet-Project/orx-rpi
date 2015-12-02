################################################################################
#
# python-librarian
#
################################################################################

PYTHON_LIBRARIAN_VERSION = ceaf82862bfd7f97555c4ddef782f84279f6bc6a
PYTHON_LIBRARIAN_SOURCE = $(PYTHON_LIBRARIAN_VERSION).tar.gz
PYTHON_LIBRARIAN_SITE = https://github.com/Outernet-Project/librarian/archive
PYTHON_LIBRARIAN_LICENSE = GPL
PYTHON_LIBRARIAN_SETUP_TYPE = setuptools

$(eval $(python-package))
