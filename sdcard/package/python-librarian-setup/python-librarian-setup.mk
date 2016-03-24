################################################################################
#
# python-librarian-setup
#
################################################################################

PYTHON_LIBRARIAN_SETUP_VERSION = fa0c679a54be9c3fa559e4c67367c0fd391300a2
PYTHON_LIBRARIAN_SETUP_SITE = $(call github,Outernet-Project,librarian-setup,$(PYTHON_LIBRARIAN_SETUP_VERSION))
PYTHON_LIBRARIAN_SETUP_LICENSE = GPL
PYTHON_LIBRARIAN_SETUP_SETUP_TYPE = setuptools

$(eval $(python-package))
