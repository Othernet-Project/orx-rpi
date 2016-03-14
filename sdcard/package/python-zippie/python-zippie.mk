################################################################################
#
# python-zippie
#
################################################################################

PYTHON_ZIPPIE_VERSION = 0a2770a3b1ec0cbaa927857f72228398f133c0e2
PYTHON_ZIPPIE_SITE = $(call github,integricho,zippie,$(PYTHON_ZIPPIE_VERSION))
PYTHON_ZIPPIE_LICENSE = PROPRIETARY
PYTHON_ZIPPIE_SETUP_TYPE = distutils

$(eval $(python-package))
