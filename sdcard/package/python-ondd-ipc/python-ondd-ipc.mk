################################################################################
#
# python-ondd-ipc
#
################################################################################

PYTHON_ONDD_IPC_VERSION = 5d36689fab4356a36c417b279c85ec5f55290502
PYTHON_ONDD_IPC_SOURCE = $(PYTHON_ONDD_IPC_VERSION).tar.gz
PYTHON_ONDD_IPC_SITE = https://github.com/Outernet-Project/ondd-ipc/archive
PYTHON_ONDD_IPC_LICENSE = GPL
PYTHON_ONDD_IPC_SETUP_TYPE = setuptools

$(eval $(python-package))
