################################################################################
#
# python-pbkdf2
#
################################################################################

PYTHON_PBKDF2_VERSION = 1.3
PYTHON_PBKDF2_SOURCE = pbkdf2-$(PYTHON_PBKDF2_VERSION).tar.gz
PYTHON_PBKDF2_SITE = https://pypi.python.org/packages/source/p/pbkdf2
PYTHON_PBKDF2_LICENSE = MIT
PYTHON_PBKDF2_LICENSE_FILES = LICENSE
PYTHON_PBKDF2_SETUP_TYPE = setuptools

$(eval $(python-package))
