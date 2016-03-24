################################################################################
#
# python-librarian-filemanager
#
################################################################################

PYTHON_LIBRARIAN_FILEMANAGER_VERSION = 348e9159010eb5da728a4cb951caff0cd966c0bd
PYTHON_LIBRARIAN_FILEMANAGER_SITE = $(call github,Outernet-Project,librarian-filemanager,$(PYTHON_LIBRARIAN_FILEMANAGER_VERSION))
PYTHON_LIBRARIAN_FILEMANAGER_LICENSE = GPL
PYTHON_LIBRARIAN_FILEMANAGER_SETUP_TYPE = setuptools

$(eval $(python-package))
