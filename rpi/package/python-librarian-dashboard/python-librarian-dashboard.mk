################################################################################
#
# python-librarian-dashboard
#
################################################################################

PYTHON_LIBRARIAN_DASHBOARD_VERSION = 4af388892a7577017db9a440bf0bf6b854b75763
PYTHON_LIBRARIAN_DASHBOARD_SOURCE = $(PYTHON_LIBRARIAN_DASHBOARD_VERSION).tar.gz
PYTHON_LIBRARIAN_DASHBOARD_SITE = https://github.com/Outernet-Project/librarian-dashboard/archive
PYTHON_LIBRARIAN_DASHBOARD_LICENSE = GPL
PYTHON_LIBRARIAN_DASHBOARD_DEPENDENCIES = python-librarian-core
PYTHON_LIBRARIAN_DASHBOARD_SETUP_TYPE = setuptools

$(eval $(python-package))
