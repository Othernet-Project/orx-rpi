################################################################################
#
# python-librarian-diskspace
#
################################################################################

PYTHON_LIBRARIAN_DISKSPACE_VERSION = 61e6204f41265b9b9495e8eb2162fcd60e2b6f7e
PYTHON_LIBRARIAN_DISKSPACE_SITE = $(call github,Outernet-Project,librarian-diskspace,$(PYTHON_LIBRARIAN_DISKSPACE_VERSION))
PYTHON_LIBRARIAN_DISKSPACE_LICENSE = GPL
PYTHON_LIBRARIAN_DISKSPACE_SETUP_TYPE = setuptools

$(eval $(python-package))
