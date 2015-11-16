################################################################################
#
# python-chainable-validators
#
################################################################################

PYTHON_CHAINABLE_VALIDATORS_VERSION = 0.8.2
PYTHON_CHAINABLE_VALIDATORS_SOURCE = chainable-validators-$(PYTHON_CHAINABLE_VALIDATORS_VERSION).tar.gz
PYTHON_CHAINABLE_VALIDATORS_SITE = http://pypi.python.org/packages/source/c/chainable-validators
PYTHON_CHAINABLE_VALIDATORS_LICENSE = GPL
PYTHON_CHAINABLE_VALIDATORS_SETUP_TYPE = setuptools

$(eval $(python-package))
