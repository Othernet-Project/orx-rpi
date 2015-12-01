################################################################################
#
# python-librarian-opener-video
#
################################################################################

PYTHON_LIBRARIAN_OPENER_HTML_VERSION = 2f5babd561e69734b6266be050bc623ff90cb05f
PYTHON_LIBRARIAN_OPENER_HTML_SOURCE = $(PYTHON_LIBRARIAN_OPENER_HTML_VERSION).tar.gz
PYTHON_LIBRARIAN_OPENER_HTML_SITE = https://github.com/Outernet-Project/librarian-opener-html/archive
PYTHON_LIBRARIAN_OPENER_HTML_LICENSE = GPL
PYTHON_LIBRARIAN_OPENER_HTML_DEPENDENCIES = python-librarian-core python-librarian-filemanager
PYTHON_LIBRARIAN_OPENER_HTML_SETUP_TYPE = setuptools

$(eval $(python-package))
