################################################################################
#
# python-librarian-opener-html
#
################################################################################

PYTHON_LIBRARIAN_OPENER_HTML_VERSION = 26ba4586baeb6f9b9a4dfd3f92ef5bdf44c16816
PYTHON_LIBRARIAN_OPENER_HTML_SITE = $(call github,Outernet-Project,librarian-opener-html,$(PYTHON_LIBRARIAN_OPENER_HTML_VERSION))
PYTHON_LIBRARIAN_OPENER_HTML_LICENSE = GPL
PYTHON_LIBRARIAN_OPENER_HTML_SETUP_TYPE = setuptools

$(eval $(python-package))
