################################################################################
#
# python-scandir
#
################################################################################

PYTHON_SCANDIR_VERSION = 1.1
PYTHON_SCANDIR_SOURCE = scandir-$(PYTHON_SCANDIR_VERSION).zip
PYTHON_SCANDIR_SITE = https://pypi.python.org/packages/source/s/scandir
PYTHON_SCANDIR_LICENSE = MIT
PYTHON_SCANDIR_LICENSE_FILES = LICENSE
PYTHON_SCANDIR_SETUP_TYPE = distutils

define PYTHON_SCANDIR_EXTRACT_CMDS
    $(UNZIP) -d $(@D) $(DL_DIR)/$(PYTHON_SCANDIR_SOURCE)
    mv $(@D)/scandir-$(PYTHON_SCANDIR_VERSION)/* $(@D)
    $(RM) -r $(@D)/greenlet-$(PYTHON_SCANDIR_VERSION)
endef

$(eval $(python-package))
