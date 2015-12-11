################################################################################
#
# python-bitarray
#
################################################################################

PYTHON_BITARRAY_VERSION = 0.8.1
PYTHON_BITARRAY_SOURCE = bitarray-$(PYTHON_BITARRAY_VERSION).tar.gz
PYTHON_BITARRAY_SITE = https://pypi.python.org/packages/source/b/bitarray
PYTHON_BITARRAY_LICENSE = BSD
PYTHON_BITARRAY_LICENSE_FILES = LICENSE
PYTHON_BITARRAY_SETUP_TYPE = distutils

$(eval $(python-package))
