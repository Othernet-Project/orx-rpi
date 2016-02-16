################################################################################
#
# python-gevent
#
################################################################################

PYTHON_GEVENT_VERSION = 1.0.1
PYTHON_GEVENT_SOURCE = gevent-$(PYTHON_GEVENT_VERSION).tar.gz
PYTHON_GEVENT_SITE = https://pypi.python.org/packages/source/g/gevent
PYTHON_GEVENT_LICENSE = MIT
PYTHON_GEVENT_LICENSE_FILES = LICENSE
PYTHON_GEVENT_SETUP_TYPE = setuptools
PYTHON_GEVENT_DEPENDENCIES = libev python-greenlet
PYTHON_GEVENT_ENV = LIBEV_EMBED=0

$(eval $(python-package))
