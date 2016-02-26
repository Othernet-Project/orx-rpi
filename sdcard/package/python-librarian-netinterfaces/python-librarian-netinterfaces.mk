################################################################################
#
# python-librarian-netinterfaces
#
################################################################################

PYTHON_LIBRARIAN_NETINTERFACES_VERSION = 06bd39faa54635b3fc78bfde38a62a2052abefbd
PYTHON_LIBRARIAN_NETINTERFACES_SOURCE = $(PYTHON_LIBRARIAN_NETINTERFACES_VERSION).tar.gz
PYTHON_LIBRARIAN_NETINTERFACES_SITE = https://github.com/Outernet-Project/librarian-netinterfaces/archive
PYTHON_LIBRARIAN_NETINTERFACES_LICENSE = GPL
PYTHON_LIBRARIAN_NETINTERFACES_SETUP_TYPE = setuptools

$(eval $(python-package))
