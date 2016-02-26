################################################################################
#
# python-ondd-ipc
#
################################################################################

PYTHON_ONDD_IPC_VERSION = 48b73e9e8fe82e58207b25196938c37a58049c75
PYTHON_ONDD_IPC_SOURCE = $(PYTHON_ONDD_IPC_VERSION).tar.gz
PYTHON_ONDD_IPC_SITE = https://github.com/Outernet-Project/ondd-ipc/archive
PYTHON_ONDD_IPC_LICENSE = GPL
PYTHON_ONDD_IPC_SETUP_TYPE = setuptools

$(eval $(python-package))
