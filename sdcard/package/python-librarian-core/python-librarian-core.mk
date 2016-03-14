################################################################################
#
# python-librarian-core
#
################################################################################

PYTHON_LIBRARIAN_CORE_VERSION = b9543e3f9fafc43c05b37db7f1a6257fcd357d9d
PYTHON_LIBRARIAN_CORE_SITE = $(call github,Outernet-Project,librarian-core,$(PYTHON_LIBRARIAN_CORE_VERSION))
PYTHON_LIBRARIAN_CORE_LICENSE = GPL
PYTHON_LIBRARIAN_CORE_SETUP_TYPE = setuptools

$(eval $(python-package))
