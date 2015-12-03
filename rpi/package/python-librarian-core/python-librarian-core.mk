################################################################################
#
# python-librarian-core
#
################################################################################

PYTHON_LIBRARIAN_CORE_VERSION = 2ef0318e8454fdb729e502c0d48d908b3f6ec8d2
PYTHON_LIBRARIAN_CORE_SOURCE = $(PYTHON_LIBRARIAN_CORE_VERSION).tar.gz
PYTHON_LIBRARIAN_CORE_SITE = https://github.com/Outernet-Project/librarian-core/archive
PYTHON_LIBRARIAN_CORE_LICENSE = GPL
PYTHON_LIBRARIAN_CORE_SETUP_TYPE = setuptools

$(eval $(python-package))
