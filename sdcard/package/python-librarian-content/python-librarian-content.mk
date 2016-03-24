################################################################################
#
# python-librarian-content
#
################################################################################

PYTHON_LIBRARIAN_CONTENT_VERSION = ab5daa239fd3e907d4d170ed24264d590301871a
PYTHON_LIBRARIAN_CONTENT_SITE = $(call github,Outernet-Project,librarian-content,$(PYTHON_LIBRARIAN_CONTENT_VERSION))
PYTHON_LIBRARIAN_CONTENT_LICENSE = GPL
PYTHON_LIBRARIAN_CONTENT_SETUP_TYPE = setuptools

$(eval $(python-package))
