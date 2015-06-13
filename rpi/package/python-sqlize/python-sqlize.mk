################################################################################
#
# python-sqlize
#
################################################################################

PYTHON_SQLIZE_VERSION = 0.1
PYTHON_SQLIZE_SOURCE = sqlize-$(PYTHON_SQLIZE_VERSION).tar.gz
PYTHON_SQLIZE_SITE = http://pypi.python.org/packages/source/s/sqlize/
PYTHON_SQLIZE_LICENSE = GPL
PYTHON_SQLIZE_SETUP_TYPE = setuptools

$(eval $(python-package))
