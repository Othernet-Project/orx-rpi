################################################################################
#
# python-greentasks
#
################################################################################

PYTHON_GREENTASKS_VERSION = fabc18c1718dde3722ca76452aa211867361b908
PYTHON_GREENTASKS_SITE = $(call github,Outernet-Project,greentasks,$(PYTHON_GREENTASKS_VERSION))
PYTHON_GREENTASKS_LICENSE = GPL
PYTHON_GREENTASKS_SETUP_TYPE = setuptools

$(eval $(python-package))
