################################################################################
#
# python-librarian-opener-video
#
################################################################################

PYTHON_LIBRARIAN_OPENER_VIDEO_VERSION = 7ab3d5c500c4188042c7da787653e764ae42e659
PYTHON_LIBRARIAN_OPENER_VIDEO_SOURCE = $(PYTHON_LIBRARIAN_OPENER_VIDEO_VERSION).tar.gz
PYTHON_LIBRARIAN_OPENER_VIDEO_SITE = https://github.com/Outernet-Project/librarian-opener-video/archive
PYTHON_LIBRARIAN_OPENER_VIDEO_LICENSE = GPL
PYTHON_LIBRARIAN_OPENER_VIDEO_DEPENDENCIES = python-librarian-core python-librarian-filemanager
PYTHON_LIBRARIAN_OPENER_VIDEO_SETUP_TYPE = setuptools

$(eval $(python-package))
