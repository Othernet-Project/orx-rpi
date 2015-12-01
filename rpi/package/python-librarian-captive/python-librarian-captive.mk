################################################################################
#
# python-librarian-captive
#
################################################################################

PYTHON_LIBRARIAN_CAPTIVE_VERSION = 88b9e2e81cf6c6a8669a2a9355cd22ae563aa70b
PYTHON_LIBRARIAN_CAPTIVE_SOURCE = $(PYTHON_LIBRARIAN_CAPTIVE_VERSION).tar.gz
PYTHON_LIBRARIAN_CAPTIVE_SITE = https://github.com/Outernet-Project/librarian-captive/archive
PYTHON_LIBRARIAN_CAPTIVE_LICENSE = GPL
PYTHON_LIBRARIAN_CAPTIVE_DEPENDENCIES = python-librarian-core
PYTHON_LIBRARIAN_CAPTIVE_SETUP_TYPE = setuptools

$(eval $(python-package))
