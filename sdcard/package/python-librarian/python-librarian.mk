################################################################################
#
# python-librarian
#
################################################################################

PYTHON_LIBRARIAN_VERSION = 26816ca43efaae04fbecdeecea5a7c41f5d82664
PYTHON_LIBRARIAN_SITE = $(call github,Outernet-Project,librarian,$(PYTHON_LIBRARIAN_VERSION))
PYTHON_LIBRARIAN_LICENSE = GPL
PYTHON_LIBRARIAN_SETUP_TYPE = setuptools

$(eval $(python-package))
