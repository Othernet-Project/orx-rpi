################################################################################
#
# python-librarian-notifications
#
################################################################################

PYTHON_LIBRARIAN_NOTIFICATIONS_VERSION = 638e8876bea9750c887c1cbc79ea0ee8dc4c998e
PYTHON_LIBRARIAN_NOTIFICATIONS_SOURCE = $(PYTHON_LIBRARIAN_NOTIFICATIONS_VERSION).tar.gz
PYTHON_LIBRARIAN_NOTIFICATIONS_SITE = https://github.com/Outernet-Project/librarian-notifications/archive
PYTHON_LIBRARIAN_NOTIFICATIONS_LICENSE = GPL
PYTHON_LIBRARIAN_NOTIFICATIONS_DEPENDENCIES = python-librarian-core
PYTHON_LIBRARIAN_NOTIFICATIONS_SETUP_TYPE = setuptools

$(eval $(python-package))
