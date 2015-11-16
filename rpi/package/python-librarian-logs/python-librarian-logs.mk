################################################################################
#
# python-librarian-logs
#
################################################################################

PYTHON_LIBRARIAN_LOGS_VERSION = 094c46e92bfec5dfc2a027792faf22a506ee7ab8
PYTHON_LIBRARIAN_LOGS_SOURCE = $(PYTHON_LIBRARIAN_LOGS_VERSION).tar.gz
PYTHON_LIBRARIAN_LOGS_SITE = https://github.com/Outernet-Project/librarian-logs/archive
PYTHON_LIBRARIAN_LOGS_LICENSE = GPL
PYTHON_LIBRARIAN_LOGS_DEPENDENCIES = python-librarian-core python-librarian-dashboard
PYTHON_LIBRARIAN_LOGS_SETUP_TYPE = setuptools

$(eval $(python-package))
