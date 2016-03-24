################################################################################
#
# python-librarian-ui
#
################################################################################

PYTHON_LIBRARIAN_UI_VERSION = 1427716e1b3053f9a9ea70ad92b81a4c5d47ea1d
PYTHON_LIBRARIAN_UI_SITE = $(call github,Outernet-Project,librarian-ui,$(PYTHON_LIBRARIAN_UI_VERSION))
PYTHON_LIBRARIAN_UI_LICENSE = GPL
PYTHON_LIBRARIAN_UI_SETUP_TYPE = setuptools

$(eval $(python-package))
