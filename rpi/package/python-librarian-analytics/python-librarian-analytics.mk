################################################################################
#
# python-librarian-analytics
#
################################################################################

PYTHON_LIBRARIAN_ANALYTICS_VERSION = b461aaa6d912543cc5cc3b004c64ae8429cb1647
PYTHON_LIBRARIAN_ANALYTICS_SOURCE = $(PYTHON_LIBRARIAN_ANALYTICS_VERSION).tar.gz
PYTHON_LIBRARIAN_ANALYTICS_SITE = https://github.com/Outernet-Project/librarian-analytics/archive
PYTHON_LIBRARIAN_ANALYTICS_LICENSE = GPL
PYTHON_LIBRARIAN_ANALYTICS_SETUP_TYPE = setuptools

$(eval $(python-package))
