################################################################################
#
# python-librarian-notifications
#
################################################################################

PYTHON_LIBRARIAN_NOTIFICATIONS_VERSION = d6ab0bdae4d63ea6ab8317d6049f66345079d0aa
PYTHON_LIBRARIAN_NOTIFICATIONS_SOURCE = $(PYTHON_LIBRARIAN_NOTIFICATIONS_VERSION).tar.gz
PYTHON_LIBRARIAN_NOTIFICATIONS_SITE = https://github.com/Outernet-Project/librarian-notifications/archive/
PYTHON_LIBRARIAN_NOTIFICATIONS_LICENSE = GPL
PYTHON_LIBRARIAN_NOTIFICATIONS_DEPENDENCIES = python-librarian-core
PYTHON_LIBRARIAN_NOTIFICATIONS_SETUP_TYPE = setuptools

$(eval $(python-package))
