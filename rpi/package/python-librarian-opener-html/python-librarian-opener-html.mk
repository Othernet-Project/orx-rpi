################################################################################
#
# python-librarian-opener-video
#
################################################################################

PYTHON_LIBRARIAN_OPENER_HTML_VERSION = 1f3b84263ece1aafbed3a23219ad74df9f729190
PYTHON_LIBRARIAN_OPENER_HTML_SOURCE = $(PYTHON_LIBRARIAN_OPENER_HTML_VERSION).tar.gz
PYTHON_LIBRARIAN_OPENER_HTML_SITE = https://github.com/Outernet-Project/librarian-opener-html/archive/
PYTHON_LIBRARIAN_OPENER_HTML_LICENSE = GPL
PYTHON_LIBRARIAN_OPENER_HTML_DEPENDENCIES = python-librarian-core python-librarian-filemanager
PYTHON_LIBRARIAN_OPENER_HTML_SETUP_TYPE = setuptools

$(eval $(python-package))
