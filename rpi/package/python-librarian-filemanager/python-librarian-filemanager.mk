################################################################################
#
# python-librarian-filemanager
#
################################################################################

PYTHON_LIBRARIAN_FILEMANAGER_VERSION = a7a1eb1f10dbc403c38557b688f9f52e3d9f233f
PYTHON_LIBRARIAN_FILEMANAGER_SOURCE = $(PYTHON_LIBRARIAN_FILEMANAGER_VERSION).tar.gz
PYTHON_LIBRARIAN_FILEMANAGER_SITE = https://github.com/Outernet-Project/librarian-filemanager/archive
PYTHON_LIBRARIAN_FILEMANAGER_LICENSE = GPL
PYTHON_LIBRARIAN_FILEMANAGER_DEPENDENCIES = python-librarian-core python-librarian-content
PYTHON_LIBRARIAN_FILEMANAGER_SETUP_TYPE = setuptools

$(eval $(python-package))
