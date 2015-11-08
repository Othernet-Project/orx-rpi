################################################################################
#
# python-outernet-metadata
#
################################################################################

PYTHON_OUTERNET_METADATA_VERSION = 0.8.post1
PYTHON_OUTERNET_METADATA_SOURCE = outernet-metadata-$(PYTHON_OUTERNET_METADATA_VERSION).tar.gz
PYTHON_OUTERNET_METADATA_SITE = http://pypi.python.org/packages/source/o/outernet-metadata
PYTHON_OUTERNET_METADATA_LICENSE = GPL
PYTHON_OUTERNET_METADATA_DEPENDENCIES = python-chainable-validators
PYTHON_OUTERNET_METADATA_SETUP_TYPE = setuptools

$(eval $(python-package))
