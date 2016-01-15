################################################################################
#
# python-ondd-ipc
#
################################################################################

PYTHON_ONDD_IPC_VERSION = 05600566d76943c5da44f57a76b2ef048303a494
PYTHON_ONDD_IPC_SOURCE = $(PYTHON_ONDD_IPC_VERSION).tar.gz
PYTHON_ONDD_IPC_SITE = https://github.com/Outernet-Project/ondd-ipc/archive
PYTHON_ONDD_IPC_LICENSE = GPL
PYTHON_ONDD_IPC_SETUP_TYPE = setuptools

$(eval $(python-package))
