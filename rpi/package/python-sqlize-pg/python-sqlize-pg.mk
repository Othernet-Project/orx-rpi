################################################################################
#
# python-sqlize-pg
#
################################################################################

PYTHON_SQLIZE_PG_VERSION = 8f1356d5a8456f94a8838db82a9996ff316ca720
PYTHON_SQLIZE_PG_SOURCE = $(PYTHON_SQLIZE_PG_VERSION).tar.gz
PYTHON_SQLIZE_PG_SITE = https://github.com/Outernet-Project/sqlize-pg/archive
PYTHON_SQLIZE_PG_LICENSE = GPL
PYTHON_SQLIZE_PG_SETUP_TYPE = setuptools

$(eval $(python-package))
