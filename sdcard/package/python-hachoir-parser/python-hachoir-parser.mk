################################################################################
#
# python-hachoir-parser
#
################################################################################

PYTHON_HACHOIR_PARSER_VERSION = 1.3.3
PYTHON_HACHOIR_PARSER_SOURCE = hachoir-parser-$(PYTHON_HACHOIR_PARSER_VERSION).tar.gz
PYTHON_HACHOIR_PARSER_SITE = https://pypi.python.org/packages/source/h/hachoir-parser
PYTHON_HACHOIR_PARSER_LICENSE = GPL
PYTHON_HACHOIR_PARSER_LICENSE_FILES = COPYING
PYTHON_HACHOIR_PARSER_SETUP_TYPE = distutils

$(eval $(python-package))
