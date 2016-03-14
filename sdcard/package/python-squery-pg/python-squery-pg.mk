################################################################################
#
# python-squery-pg
#
################################################################################

PYTHON_SQUERY_PG_VERSION = 871d06f1f969c557ae4c1391a99088dc7bb9fd84
PYTHON_SQUERY_PG_SITE = $(call github,Outernet-Project,squery-pg,$(PYTHON_SQUERY_PG_VERSION))
PYTHON_SQUERY_PG_LICENSE = GPL
PYTHON_SQUERY_PG_SETUP_TYPE = setuptools

$(eval $(python-package))
