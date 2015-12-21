################################################################################
#
# python-librarian-library
#
################################################################################

PYTHON_LIBRARIAN_LIBRARY_VERSION = c0a8f0ebbd15f0f3b3980c2eae2b5a29794e34ae
PYTHON_LIBRARIAN_LIBRARY_SOURCE = $(PYTHON_LIBRARIAN_LIBRARY_VERSION).tar.gz
PYTHON_LIBRARIAN_LIBRARY_SITE = https://github.com/Outernet-Project/librarian-library/archive
PYTHON_LIBRARIAN_LIBRARY_LICENSE = GPL
PYTHON_LIBRARIAN_LIBRARY_DEPENDENCIES = python-librarian-core python-librarian-content python-librarian-filemanager python-scandir
PYTHON_LIBRARIAN_LIBRARY_SETUP_TYPE = setuptools

$(eval $(python-package))
