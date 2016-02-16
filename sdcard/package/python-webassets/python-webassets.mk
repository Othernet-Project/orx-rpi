################################################################################
#
# python-webassets
#
################################################################################

PYTHON_WEBASSETS_VERSION = 0.10.1
PYTHON_WEBASSETS_SOURCE = webassets-$(PYTHON_WEBASSETS_VERSION).tar.gz
PYTHON_WEBASSETS_SITE = http://pypi.python.org/packages/source/w/webassets
PYTHON_WEBASSETS_LICENSE = BSD
PYTHON_WEBASSETS_DEPENDENCIES = 
PYTHON_WEBASSETS_SETUP_TYPE = setuptools

$(eval $(python-package))
