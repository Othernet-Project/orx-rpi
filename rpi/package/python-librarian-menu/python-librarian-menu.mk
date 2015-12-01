################################################################################
#
# python-librarian-menu
#
################################################################################

PYTHON_LIBRARIAN_MENU_VERSION = 443f130ed01b0e8e8d640cffe701016c810f0e33
PYTHON_LIBRARIAN_MENU_SOURCE = $(PYTHON_LIBRARIAN_MENU_VERSION).tar.gz
PYTHON_LIBRARIAN_MENU_SITE = https://github.com/Outernet-Project/librarian-menu/archive
PYTHON_LIBRARIAN_MENU_LICENSE = GPL
PYTHON_LIBRARIAN_MENU_DEPENDENCIES = python-librarian-core
PYTHON_LIBRARIAN_MENU_SETUP_TYPE = setuptools

$(eval $(python-package))
