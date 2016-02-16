################################################################################
#
# python-librarian-dashboard
#
################################################################################

PYTHON_LIBRARIAN_DASHBOARD_VERSION = 3aab00c2a31a75919481c1616219cfeb5524828b
PYTHON_LIBRARIAN_DASHBOARD_SOURCE = $(PYTHON_LIBRARIAN_DASHBOARD_VERSION).tar.gz
PYTHON_LIBRARIAN_DASHBOARD_SITE = https://github.com/Outernet-Project/librarian-dashboard/archive
PYTHON_LIBRARIAN_DASHBOARD_LICENSE = GPL
PYTHON_LIBRARIAN_DASHBOARD_DEPENDENCIES = python-librarian-core
PYTHON_LIBRARIAN_DASHBOARD_SETUP_TYPE = setuptools

$(eval $(python-package))
