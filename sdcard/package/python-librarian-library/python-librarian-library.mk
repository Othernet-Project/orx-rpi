################################################################################
#
# python-librarian-library
#
################################################################################

PYTHON_LIBRARIAN_LIBRARY_VERSION = e46ab1656354143048c6ce6934fc5b1549d39437
PYTHON_LIBRARIAN_LIBRARY_SITE = $(call github,Outernet-Project,librarian-library,$(PYTHON_LIBRARIAN_LIBRARY_VERSION))
PYTHON_LIBRARIAN_LIBRARY_LICENSE = GPL
PYTHON_LIBRARIAN_LIBRARY_SETUP_TYPE = setuptools

$(eval $(python-package))
