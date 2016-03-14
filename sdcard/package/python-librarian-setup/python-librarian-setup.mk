################################################################################
#
# python-librarian-setup
#
################################################################################

PYTHON_LIBRARIAN_SETUP_VERSION = 1a1ae4c61ba4014678f124e96311530beaa5d77e
PYTHON_LIBRARIAN_SETUP_SITE = $(call github,Outernet-Project,librarian-setup,$(PYTHON_LIBRARIAN_SETUP_VERSION))
PYTHON_LIBRARIAN_SETUP_LICENSE = GPL
PYTHON_LIBRARIAN_SETUP_SETUP_TYPE = setuptools

$(eval $(python-package))
