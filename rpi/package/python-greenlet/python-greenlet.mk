################################################################################
#
# python-greenlet
#
################################################################################

PYTHON_GREENLET_VERSION = 0.4.7
PYTHON_GREENLET_SOURCE = greenlet-$(PYTHON_GREENLET_VERSION).zip
PYTHON_GREENLET_SITE = https://pypi.python.org/packages/source/g/greenlet
PYTHON_GREENLET_LICENSE = MIT
PYTHON_GREENLET_LICENSE_FILES = LICENSE
PYTHON_GREENLET_SETUP_TYPE = distutils

define PYTHON_GREENLET_EXTRACT_CMDS
    $(UNZIP) -d $(@D) $(DL_DIR)/$(PYTHON_GREENLET_SOURCE)
    mv $(@D)/greenlet-$(PYTHON_GREENLET_VERSION)/* $(@D)
    $(RM) -r $(@D)/greenlet-$(PYTHON_GREENLET_VERSION)
endef

$(eval $(python-package))
