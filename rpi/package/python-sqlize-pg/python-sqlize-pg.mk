################################################################################
#
# python-sqlize-pg
#
################################################################################

PYTHON_SQLIZE_PG_VERSION = e1872784939af1cc351458cb0c4e81702a8b30c6
PYTHON_SQLIZE_PG_SOURCE = $(PYTHON_SQLIZE_PG_VERSION).tar.gz
PYTHON_SQLIZE_PG_SITE = https://github.com/Outernet-Project/sqlize-pg/archive
PYTHON_SQLIZE_PG_LICENSE = GPL
PYTHON_SQLIZE_PG_SETUP_TYPE = setuptools

$(eval $(python-package))
