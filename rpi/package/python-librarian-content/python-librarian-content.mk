################################################################################
#
# python-librarian-content
#
################################################################################

PYTHON_LIBRARIAN_CONTENT_VERSION = 9339fd88c3569e251ef2f07dabe03f159fa3e817
PYTHON_LIBRARIAN_CONTENT_SOURCE = $(PYTHON_LIBRARIAN_CONTENT_VERSION).tar.gz
PYTHON_LIBRARIAN_CONTENT_SITE = https://github.com/Outernet-Project/librarian-content/archive/
PYTHON_LIBRARIAN_CONTENT_LICENSE = GPL
PYTHON_LIBRARIAN_CONTENT_DEPENDENCIES = python-librarian-core python-fsal
PYTHON_LIBRARIAN_CONTENT_SETUP_TYPE = setuptools

$(eval $(python-package))
