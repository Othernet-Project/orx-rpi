################################################################################
#
# python-ondd-ipc
#
################################################################################

PYTHON_ONDD_IPC_VERSION = 4770822288a2734d48b79ee3bcb9f63be79e1c37
PYTHON_ONDD_IPC_SITE = $(call github,Outernet-Project,ondd-ipc,$(PYTHON_ONDD_IPC_VERSION))
PYTHON_ONDD_IPC_LICENSE = GPL
PYTHON_ONDD_IPC_SETUP_TYPE = setuptools

$(eval $(python-package))
