################################################################################
#
# python-user-agents
#
################################################################################

PYTHON_USER_AGENTS_VERSION = 1.0.1
PYTHON_USER_AGENTS_SOURCE = user-agents-$(PYTHON_USER_AGENTS_VERSION).tar.gz
PYTHON_USER_AGENTS_SITE = https://pypi.python.org/packages/source/u/user-agents
PYTHON_USER_AGENTS_LICENSE = MIT
PYTHON_USER_AGENTS_LICENSE_FILES = LICENSE
PYTHON_USER_AGENTS_SETUP_TYPE = setuptools

$(eval $(python-package))
