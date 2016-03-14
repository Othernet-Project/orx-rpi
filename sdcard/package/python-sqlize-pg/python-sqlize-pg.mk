################################################################################
#
# python-sqlize-pg
#
################################################################################

PYTHON_SQLIZE_PG_VERSION = 8f1356d5a8456f94a8838db82a9996ff316ca720
PYTHON_SQLIZE_PG_SITE = $(call github,Outernet-Project,sqlize-pg,$(PYTHON_SQLIZE_PG_VERSION))
PYTHON_SQLIZE_PG_LICENSE = GPL
PYTHON_SQLIZE_PG_SETUP_TYPE = setuptools

$(eval $(python-package))
