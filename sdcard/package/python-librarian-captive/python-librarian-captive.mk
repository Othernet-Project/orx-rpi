################################################################################
#
# python-librarian-captive
#
################################################################################

PYTHON_LIBRARIAN_CAPTIVE_VERSION = 00b09dbc639db2adaf2d9b255b20c3c80dfdcaf4
PYTHON_LIBRARIAN_CAPTIVE_SITE = $(call github,Outernet-Project,librarian-captive,$(PYTHON_LIBRARIAN_CAPTIVE_VERSION))
PYTHON_LIBRARIAN_CAPTIVE_LICENSE = GPL
PYTHON_LIBRARIAN_CAPTIVE_DEPENDENCIES = python-librarian-core
PYTHON_LIBRARIAN_CAPTIVE_SETUP_TYPE = setuptools

$(eval $(python-package))
