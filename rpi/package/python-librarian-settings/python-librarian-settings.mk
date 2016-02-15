################################################################################
#
# python-librarian-settings
#
################################################################################

PYTHON_LIBRARIAN_SETTINGS_VERSION = f7e972da1a00fd9c59b03e8c4ea598a2ac1d0ba8
PYTHON_LIBRARIAN_SETTINGS_SOURCE = $(PYTHON_LIBRARIAN_SETTINGS_VERSION).tar.gz
PYTHON_LIBRARIAN_SETTINGS_SITE = https://github.com/Outernet-Project/librarian-settings/archive
PYTHON_LIBRARIAN_SETTINGS_LICENSE = GPL
PYTHON_LIBRARIAN_SETTINGS_SETUP_TYPE = setuptools

$(eval $(python-package))
