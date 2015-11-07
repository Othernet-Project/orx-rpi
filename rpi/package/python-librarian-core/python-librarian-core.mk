################################################################################
#
# python-librarian-core
#
################################################################################

PYTHON_LIBRARIAN_CORE_VERSION = b425159fdd719eddb3fa6cc4f22fe18ae313adcc
PYTHON_LIBRARIAN_CORE_SOURCE = $(PYTHON_LIBRARIAN_CORE_VERSION).tar.gz
PYTHON_LIBRARIAN_CORE_SITE = https://github.com/Outernet-Project/librarian-core/archive/
PYTHON_LIBRARIAN_CORE_LICENSE = GPL
PYTHON_LIBRARIAN_CORE_DEPENDENCIES = python-bottle python-bottle-fdsend python-bottle-utils python-chainable-validators python-cssmin python-dateutil python-gevent python-mako python-outernet-metadata python-pbkdf2 python-pytz python-sqlize python-webassets
PYTHON_LIBRARIAN_CORE_SETUP_TYPE = setuptools

$(eval $(python-package))
