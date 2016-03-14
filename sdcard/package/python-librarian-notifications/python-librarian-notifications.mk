################################################################################
#
# python-librarian-notifications
#
################################################################################

PYTHON_LIBRARIAN_NOTIFICATIONS_VERSION = f2d7ba0e6c5eb2d407f091757fa5c125dedb8197
PYTHON_LIBRARIAN_NOTIFICATIONS_SITE = $(call github,Outernet-Project,librarian-notifications,$(PYTHON_LIBRARIAN_NOTIFICATIONS_VERSION))
PYTHON_LIBRARIAN_NOTIFICATIONS_LICENSE = GPL
PYTHON_LIBRARIAN_NOTIFICATIONS_SETUP_TYPE = setuptools

$(eval $(python-package))
