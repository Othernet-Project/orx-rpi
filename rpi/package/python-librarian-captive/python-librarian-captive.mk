################################################################################
#
# python-librarian-captive
#
################################################################################

PYTHON_LIBRARIAN_CAPTIVE_VERSION = 48dc64aeb1ccad1c86a9a8068cfff34444ad1afa
PYTHON_LIBRARIAN_CAPTIVE_SOURCE = $(PYTHON_LIBRARIAN_CAPTIVE_VERSION).tar.gz
PYTHON_LIBRARIAN_CAPTIVE_SITE = https://github.com/Outernet-Project/librarian-captive/archive
PYTHON_LIBRARIAN_CAPTIVE_LICENSE = GPL
PYTHON_LIBRARIAN_CAPTIVE_DEPENDENCIES = python-librarian-core
PYTHON_LIBRARIAN_CAPTIVE_SETUP_TYPE = setuptools

$(eval $(python-package))
