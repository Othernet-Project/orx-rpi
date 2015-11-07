################################################################################
#
# python-librarian-opener-video
#
################################################################################

PYTHON_LIBRARIAN_OPENER_VIDEO_VERSION = d7a1b3fa722d8672b0c053d337b9d13d9b4c0b76
PYTHON_LIBRARIAN_OPENER_VIDEO_SOURCE = $(PYTHON_LIBRARIAN_OPENER_VIDEO_VERSION).tar.gz
PYTHON_LIBRARIAN_OPENER_VIDEO_SITE = https://github.com/Outernet-Project/librarian-opener-video/archive/
PYTHON_LIBRARIAN_OPENER_VIDEO_LICENSE = GPL
PYTHON_LIBRARIAN_OPENER_VIDEO_DEPENDENCIES = python-librarian-core python-librarian-filemanager
PYTHON_LIBRARIAN_OPENER_VIDEO_SETUP_TYPE = setuptools

$(eval $(python-package))
