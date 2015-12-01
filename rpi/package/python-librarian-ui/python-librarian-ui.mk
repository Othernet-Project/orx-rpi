################################################################################
#
# python-librarian-ui
#
################################################################################

PYTHON_LIBRARIAN_UI_VERSION = cd9029bea4328e985b71c34280127be65714157e
PYTHON_LIBRARIAN_UI_SOURCE = $(PYTHON_LIBRARIAN_UI_VERSION).tar.gz
PYTHON_LIBRARIAN_UI_SITE = https://github.com/Outernet-Project/librarian-ui/archive
PYTHON_LIBRARIAN_UI_LICENSE = GPL
PYTHON_LIBRARIAN_UI_DEPENDENCIES = python-librarian-core
PYTHON_LIBRARIAN_UI_SETUP_TYPE = setuptools

$(eval $(python-package))
