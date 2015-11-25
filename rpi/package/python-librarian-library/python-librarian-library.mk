################################################################################
#
# python-librarian-library
#
################################################################################

PYTHON_LIBRARIAN_LIBRARY_VERSION = 7336e37b84791a950c8e17bab3d5f7c1ae9b9f4e
PYTHON_LIBRARIAN_LIBRARY_SOURCE = $(PYTHON_LIBRARIAN_LIBRARY_VERSION).tar.gz
PYTHON_LIBRARIAN_LIBRARY_SITE = https://github.com/Outernet-Project/librarian-library/archive
PYTHON_LIBRARIAN_LIBRARY_LICENSE = GPL
PYTHON_LIBRARIAN_LIBRARY_DEPENDENCIES = python-librarian-core python-librarian-content python-librarian-filemanager python-scandir
PYTHON_LIBRARIAN_LIBRARY_SETUP_TYPE = setuptools

$(eval $(python-package))
