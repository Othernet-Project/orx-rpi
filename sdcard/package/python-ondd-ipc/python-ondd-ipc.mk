################################################################################
#
# python-ondd-ipc
#
################################################################################

PYTHON_ONDD_IPC_VERSION = 2ef7e12b83d9e79f7263e511456ef7ce9f412ce3
PYTHON_ONDD_IPC_SOURCE = $(PYTHON_ONDD_IPC_VERSION).tar.gz
PYTHON_ONDD_IPC_SITE = https://github.com/Outernet-Project/ondd-ipc/archive
PYTHON_ONDD_IPC_LICENSE = GPL
PYTHON_ONDD_IPC_SETUP_TYPE = setuptools

$(eval $(python-package))
