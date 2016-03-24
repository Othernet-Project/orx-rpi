################################################################################
#
# python-librarian-ondd
#
################################################################################

PYTHON_LIBRARIAN_ONDD_VERSION = dc7d52bdb41e2dda6ed8d3baf85c4000c25d8024
PYTHON_LIBRARIAN_ONDD_SITE = $(call github,Outernet-Project,librarian-ondd,$(PYTHON_LIBRARIAN_ONDD_VERSION))
PYTHON_LIBRARIAN_ONDD_LICENSE = GPL
PYTHON_LIBRARIAN_ONDD_SETUP_TYPE = setuptools

$(eval $(python-package))
