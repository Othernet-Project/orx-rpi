################################################################################
#
# python-librarian-auth
#
################################################################################

PYTHON_LIBRARIAN_AUTH_VERSION = d86266d30be468405e6469179573c3ee9175173c
PYTHON_LIBRARIAN_AUTH_SOURCE = $(PYTHON_LIBRARIAN_AUTH_VERSION).tar.gz
PYTHON_LIBRARIAN_AUTH_SITE = https://github.com/Outernet-Project/librarian-auth/archive/
PYTHON_LIBRARIAN_AUTH_LICENSE = GPL
PYTHON_LIBRARIAN_AUTH_DEPENDENCIES = python-librarian-core
PYTHON_LIBRARIAN_AUTH_SETUP_TYPE = setuptools

$(eval $(python-package))
