################################################################################
#
# python-librarian-ui
#
################################################################################

PYTHON_LIBRARIAN_UI_VERSION = 40f0117020d189ccbfa3e9ed9191f748daa1d132
PYTHON_LIBRARIAN_UI_SITE = $(call github,Outernet-Project,librarian-ui,$(PYTHON_LIBRARIAN_UI_VERSION))
PYTHON_LIBRARIAN_UI_LICENSE = GPL
PYTHON_LIBRARIAN_UI_SETUP_TYPE = setuptools

$(eval $(python-package))
