################################################################################
#
# python-librarian-analytics
#
################################################################################

PYTHON_LIBRARIAN_ANALYTICS_VERSION = 288e60f362db5c5e2351b5d7d71696c877f73f4e
PYTHON_LIBRARIAN_ANALYTICS_SOURCE = $(PYTHON_LIBRARIAN_ANALYTICS_VERSION).tar.gz
PYTHON_LIBRARIAN_ANALYTICS_SITE = https://github.com/Outernet-Project/librarian-analytics/archive
PYTHON_LIBRARIAN_ANALYTICS_LICENSE = GPL
PYTHON_LIBRARIAN_ANALYTICS_SETUP_TYPE = setuptools

$(eval $(python-package))
