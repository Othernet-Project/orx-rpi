################################################################################
#
# python-hachoir-metadata
#
################################################################################

PYTHON_HACHOIR_METADATA_VERSION = 1.3.3
PYTHON_HACHOIR_METADATA_SOURCE = hachoir-metadata-$(PYTHON_HACHOIR_METADATA_VERSION).tar.gz
PYTHON_HACHOIR_METADATA_SITE = https://pypi.python.org/packages/source/h/hachoir-metadata
PYTHON_HACHOIR_METADATA_LICENSE = GPL
PYTHON_HACHOIR_METADATA_LICENSE_FILES = COPYING
PYTHON_HACHOIR_METADATA_SETUP_TYPE = distutils

$(eval $(python-package))
