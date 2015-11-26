################################################################################
#
# python-sqlize-pg
#
################################################################################

PYTHON_SQLIZE_PG_VERSION = 455f610f6a29aef0f114325d4dbd4c9b0817359c
PYTHON_SQLIZE_PG_SOURCE = $(PYTHON_SQLIZE_PG_VERSION).tar.gz
PYTHON_SQLIZE_PG_SITE = https://github.com/Outernet-Project/sqlize-pg/archive
PYTHON_SQLIZE_PG_LICENSE = GPL
PYTHON_SQLIZE_PG_SETUP_TYPE = setuptools

$(eval $(python-package))
