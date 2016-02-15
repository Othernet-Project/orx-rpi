################################################################################
#
# python-librarian-diskspace
#
################################################################################

PYTHON_LIBRARIAN_DISKSPACE_VERSION = b0fcfe62296436df43d8697238023275ee120753
PYTHON_LIBRARIAN_DISKSPACE_SOURCE = $(PYTHON_LIBRARIAN_DISKSPACE_VERSION).tar.gz
PYTHON_LIBRARIAN_DISKSPACE_SITE = https://github.com/Outernet-Project/librarian-diskspace/archive
PYTHON_LIBRARIAN_DISKSPACE_LICENSE = GPL
PYTHON_LIBRARIAN_DISKSPACE_DEPENDENCIES = python-librarian-core python-librarian-dashboard python-hwd
PYTHON_LIBRARIAN_DISKSPACE_SETUP_TYPE = setuptools

$(eval $(python-package))
