################################################################################
#
# python-zippie
#
################################################################################

PYTHON_ZIPPIE_VERSION = 0a2770a3b1ec0cbaa927857f72228398f133c0e2
PYTHON_ZIPPIE_SOURCE = $(PYTHON_ZIPPIE_VERSION).tar.gz
PYTHON_ZIPPIE_SITE = https://github.com/integricho/zippie/archive
PYTHON_ZIPPIE_LICENSE = PROPRIETARY
PYTHON_ZIPPIE_SETUP_TYPE = distutils

$(eval $(python-package))
