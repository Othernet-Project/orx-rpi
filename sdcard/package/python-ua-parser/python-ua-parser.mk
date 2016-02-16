################################################################################
#
# python-ua-parser
#
################################################################################

PYTHON_UA_PARSER_VERSION = 0.5.1
PYTHON_UA_PARSER_SOURCE = ua-parser-$(PYTHON_UA_PARSER_VERSION).tar.gz
PYTHON_UA_PARSER_SITE = https://pypi.python.org/packages/source/u/ua-parser
PYTHON_UA_PARSER_LICENSE = MIT
PYTHON_UA_PARSER_LICENSE_FILES = LICENSE
PYTHON_UA_PARSER_SETUP_TYPE = setuptools

$(eval $(python-package))
