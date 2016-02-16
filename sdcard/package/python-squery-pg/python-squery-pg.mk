################################################################################
#
# python-squery-pg
#
################################################################################

PYTHON_SQUERY_PG_VERSION = 871d06f1f969c557ae4c1391a99088dc7bb9fd84
PYTHON_SQUERY_PG_SOURCE = $(PYTHON_SQUERY_PG_VERSION).tar.gz
PYTHON_SQUERY_PG_SITE = https://github.com/Outernet-Project/squery-pg/archive
PYTHON_SQUERY_PG_LICENSE = GPL
PYTHON_SQUERY_PG_SETUP_TYPE = setuptools

$(eval $(python-package))
