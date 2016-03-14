################################################################################
#
# python-hachoir-core
#
################################################################################

PYTHON_HACHOIR_CORE_VERSION = 1.3.3
PYTHON_HACHOIR_CORE_SOURCE = hachoir-core-$(PYTHON_HACHOIR_CORE_VERSION).tar.gz
PYTHON_HACHOIR_CORE_SITE = https://pypi.python.org/packages/source/h/hachoir-core
PYTHON_HACHOIR_CORE_LICENSE = GPL
PYTHON_HACHOIR_CORE_LICENSE_FILES = COPYING
PYTHON_HACHOIR_CORE_SETUP_TYPE = distutils

$(eval $(python-package))
