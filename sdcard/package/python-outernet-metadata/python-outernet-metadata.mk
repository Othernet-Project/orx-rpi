################################################################################
#
# python-outernet-metadata
#
################################################################################

PYTHON_OUTERNET_METADATA_VERSION = v0.8.post1
PYTHON_OUTERNET_METADATA_SITE = $(call github,Outernet-Project,outernet-metadata,$(PYTHON_OUTERNET_METADATA_VERSION))
PYTHON_OUTERNET_METADATA_LICENSE = GPL
PYTHON_OUTERNET_METADATA_DEPENDENCIES = python-chainable-validators
PYTHON_OUTERNET_METADATA_SETUP_TYPE = setuptools

$(eval $(python-package))
