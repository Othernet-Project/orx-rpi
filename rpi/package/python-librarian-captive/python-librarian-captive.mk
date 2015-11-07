################################################################################
#
# python-librarian-captive
#
################################################################################

PYTHON_LIBRARIAN_CAPTIVE_VERSION = a6e636d178055279dc6ce065de0cb73e76f4803c
PYTHON_LIBRARIAN_CAPTIVE_SOURCE = $(PYTHON_LIBRARIAN_CAPTIVE_VERSION).tar.gz
PYTHON_LIBRARIAN_CAPTIVE_SITE = https://github.com/Outernet-Project/librarian-captive/archive/
PYTHON_LIBRARIAN_CAPTIVE_LICENSE = GPL
PYTHON_LIBRARIAN_CAPTIVE_DEPENDENCIES = python-librarian-core
PYTHON_LIBRARIAN_CAPTIVE_SETUP_TYPE = setuptools

$(eval $(python-package))
