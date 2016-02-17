################################################################################
#
# python-librarian-diskspace
#
################################################################################

PYTHON_LIBRARIAN_DISKSPACE_VERSION = e26c7c4cbfa3f93d8c3b097d135c7c560fea82b0
PYTHON_LIBRARIAN_DISKSPACE_SOURCE = $(PYTHON_LIBRARIAN_DISKSPACE_VERSION).tar.gz
PYTHON_LIBRARIAN_DISKSPACE_SITE = https://github.com/Outernet-Project/librarian-diskspace/archive
PYTHON_LIBRARIAN_DISKSPACE_LICENSE = GPL
PYTHON_LIBRARIAN_DISKSPACE_DEPENDENCIES = python-librarian-core python-librarian-dashboard python-hwd
PYTHON_LIBRARIAN_DISKSPACE_SETUP_TYPE = setuptools

$(eval $(python-package))
