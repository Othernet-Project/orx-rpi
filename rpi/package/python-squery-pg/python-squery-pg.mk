################################################################################
#
# python-squery-pg
#
################################################################################

PYTHON_SQUERY_PG_VERSION = c34d815d648e44f3749cf7acc228720baf422735
PYTHON_SQUERY_PG_SOURCE = $(PYTHON_SQUERY_PG_VERSION).tar.gz
PYTHON_SQUERY_PG_SITE = https://github.com/Outernet-Project/squery-pg/archive
PYTHON_SQUERY_PG_LICENSE = GPL
PYTHON_SQUERY_PG_SETUP_TYPE = setuptools

$(eval $(python-package))
