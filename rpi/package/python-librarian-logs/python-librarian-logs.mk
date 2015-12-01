################################################################################
#
# python-librarian-logs
#
################################################################################

PYTHON_LIBRARIAN_LOGS_VERSION = c52c2dbe37fcc93773cbf774ec844dfc6fae7cf2
PYTHON_LIBRARIAN_LOGS_SOURCE = $(PYTHON_LIBRARIAN_LOGS_VERSION).tar.gz
PYTHON_LIBRARIAN_LOGS_SITE = https://github.com/Outernet-Project/librarian-logs/archive
PYTHON_LIBRARIAN_LOGS_LICENSE = GPL
PYTHON_LIBRARIAN_LOGS_DEPENDENCIES = python-librarian-core python-librarian-dashboard
PYTHON_LIBRARIAN_LOGS_SETUP_TYPE = setuptools

$(eval $(python-package))
