################################################################################
#
# python-ondd-ipc
#
################################################################################

PYTHON_ONDD_IPC_VERSION = 48b73e9e8fe82e58207b25196938c37a58049c75
PYTHON_ONDD_IPC_SITE = $(call github,Outernet-Project,ondd-ipc,$(PYTHON_ONDD_IPC_VERSION))
PYTHON_ONDD_IPC_LICENSE = GPL
PYTHON_ONDD_IPC_SETUP_TYPE = setuptools

$(eval $(python-package))
