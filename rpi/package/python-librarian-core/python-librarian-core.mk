################################################################################
#
# python-librarian-core
#
################################################################################

PYTHON_LIBRARIAN_CORE_VERSION = fb6455342dee0e426a46f983bfed7545a3e08703
PYTHON_LIBRARIAN_CORE_SOURCE = $(PYTHON_LIBRARIAN_CORE_VERSION).tar.gz
PYTHON_LIBRARIAN_CORE_SITE = https://github.com/Outernet-Project/librarian-core/archive
PYTHON_LIBRARIAN_CORE_LICENSE = GPL
PYTHON_LIBRARIAN_CORE_SETUP_TYPE = setuptools

$(eval $(python-package))
