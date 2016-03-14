################################################################################
#
# python-librarian-logs
#
################################################################################

PYTHON_LIBRARIAN_LOGS_VERSION = ffb996c33ef64e716a82442b9a6fb2ebb56fb436
PYTHON_LIBRARIAN_LOGS_SITE = $(call github,Outernet-Project,librarian-logs,$(PYTHON_LIBRARIAN_LOGS_VERSION))
PYTHON_LIBRARIAN_LOGS_LICENSE = GPL
PYTHON_LIBRARIAN_LOGS_SETUP_TYPE = setuptools

$(eval $(python-package))
