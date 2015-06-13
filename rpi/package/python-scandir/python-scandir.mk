################################################################################
#
# python-scandir
#
################################################################################

PYTHON_SCANDIR_VERSION = 0.9
PYTHON_SCANDIR_SOURCE = scandir-$(PYTHON_SCANDIR_VERSION).tar.gz
PYTHON_SCANDIR_SITE = https://pypi.python.org/packages/source/s/scandir/
PYTHON_SCANDIR_LICENSE = MIT
PYTHON_SCANDIR_LICENSE_FILES = LICENSE
PYTHON_SCANDIR_SETUP_TYPE = distutils

$(eval $(python-package))
