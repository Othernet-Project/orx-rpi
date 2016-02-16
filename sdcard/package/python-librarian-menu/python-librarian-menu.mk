################################################################################
#
# python-librarian-menu
#
################################################################################

PYTHON_LIBRARIAN_MENU_VERSION = 071e880c89d57f058b41fde8a25628f3d6e6296d
PYTHON_LIBRARIAN_MENU_SOURCE = $(PYTHON_LIBRARIAN_MENU_VERSION).tar.gz
PYTHON_LIBRARIAN_MENU_SITE = https://github.com/Outernet-Project/librarian-menu/archive
PYTHON_LIBRARIAN_MENU_LICENSE = GPL
PYTHON_LIBRARIAN_MENU_DEPENDENCIES = python-librarian-core
PYTHON_LIBRARIAN_MENU_SETUP_TYPE = setuptools

$(eval $(python-package))
