################################################################################
#
# python-ondd-ipc
#
################################################################################

PYTHON_ONDD_IPC_VERSION = 720af7b0152272b243e94f958db781867b1ff4a5
PYTHON_ONDD_IPC_SOURCE = $(PYTHON_ONDD_IPC_VERSION).tar.gz
PYTHON_ONDD_IPC_SITE = https://github.com/Outernet-Project/ondd-ipc/archive
PYTHON_ONDD_IPC_LICENSE = GPL
PYTHON_ONDD_IPC_SETUP_TYPE = setuptools

$(eval $(python-package))
