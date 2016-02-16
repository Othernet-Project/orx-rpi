################################################################################
#
# python-librarian-opener-video
#
################################################################################

PYTHON_LIBRARIAN_OPENER_HTML_VERSION = 26ba4586baeb6f9b9a4dfd3f92ef5bdf44c16816
PYTHON_LIBRARIAN_OPENER_HTML_SOURCE = $(PYTHON_LIBRARIAN_OPENER_HTML_VERSION).tar.gz
PYTHON_LIBRARIAN_OPENER_HTML_SITE = https://github.com/Outernet-Project/librarian-opener-html/archive
PYTHON_LIBRARIAN_OPENER_HTML_LICENSE = GPL
PYTHON_LIBRARIAN_OPENER_HTML_DEPENDENCIES = python-librarian-core python-librarian-filemanager
PYTHON_LIBRARIAN_OPENER_HTML_SETUP_TYPE = setuptools

$(eval $(python-package))
