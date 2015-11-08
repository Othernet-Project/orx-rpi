################################################################################
#
# python-librarian-dashboard
#
################################################################################

PYTHON_LIBRARIAN_DASHBOARD_VERSION = f5d75516ad822aeab5772b4ce7554d56e12707df
PYTHON_LIBRARIAN_DASHBOARD_SOURCE = $(PYTHON_LIBRARIAN_DASHBOARD_VERSION).tar.gz
PYTHON_LIBRARIAN_DASHBOARD_SITE = https://github.com/Outernet-Project/librarian-dashboard/archive
PYTHON_LIBRARIAN_DASHBOARD_LICENSE = GPL
PYTHON_LIBRARIAN_DASHBOARD_DEPENDENCIES = python-librarian-core
PYTHON_LIBRARIAN_DASHBOARD_SETUP_TYPE = setuptools

$(eval $(python-package))
