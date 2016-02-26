################################################################################
#
# python-librarian-ui
#
################################################################################

PYTHON_LIBRARIAN_UI_VERSION = f7498575ea338e3e3d5240678751af7941f3185d
PYTHON_LIBRARIAN_UI_SOURCE = $(PYTHON_LIBRARIAN_UI_VERSION).tar.gz
PYTHON_LIBRARIAN_UI_SITE = https://github.com/Outernet-Project/librarian-ui/archive
PYTHON_LIBRARIAN_UI_LICENSE = GPL
PYTHON_LIBRARIAN_UI_DEPENDENCIES = python-librarian-core
PYTHON_LIBRARIAN_UI_SETUP_TYPE = setuptools

$(eval $(python-package))
