################################################################################
#
# python-librarian
#
################################################################################

PYTHON_LIBRARIAN_VERSION = a5fd472210deb2dccb673425c49fdb7966e2a3ea
PYTHON_LIBRARIAN_SOURCE = $(PYTHON_LIBRARIAN_VERSION).tar.gz
PYTHON_LIBRARIAN_SITE = https://github.com/Outernet-Project/librarian/archive
PYTHON_LIBRARIAN_LICENSE = GPL
PYTHON_LIBRARIAN_SETUP_TYPE = setuptools

$(eval $(python-package))
