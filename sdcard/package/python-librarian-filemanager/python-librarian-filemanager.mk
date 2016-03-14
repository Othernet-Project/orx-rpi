################################################################################
#
# python-librarian-filemanager
#
################################################################################

PYTHON_LIBRARIAN_FILEMANAGER_VERSION = 2a61cc2302bf32ee1a1a9769afeba1c59b014a9d
PYTHON_LIBRARIAN_FILEMANAGER_SOURCE = $(PYTHON_LIBRARIAN_FILEMANAGER_VERSION).tar.gz
PYTHON_LIBRARIAN_FILEMANAGER_SITE = https://github.com/Outernet-Project/librarian-filemanager/archive
PYTHON_LIBRARIAN_FILEMANAGER_LICENSE = GPL
PYTHON_LIBRARIAN_FILEMANAGER_DEPENDENCIES = python-librarian-core python-librarian-content
PYTHON_LIBRARIAN_FILEMANAGER_SETUP_TYPE = setuptools

$(eval $(python-package))
