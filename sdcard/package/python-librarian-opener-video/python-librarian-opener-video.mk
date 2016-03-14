################################################################################
#
# python-librarian-opener-video
#
################################################################################

PYTHON_LIBRARIAN_OPENER_VIDEO_VERSION = 6785780ee2e64cb0028031b82e5694e7b1882a57
PYTHON_LIBRARIAN_OPENER_VIDEO_SITE = $(call github,Outernet-Project,librarian-opener-video,$(PYTHON_LIBRARIAN_OPENER_VIDEO_VERSION))
PYTHON_LIBRARIAN_OPENER_VIDEO_LICENSE = GPL
PYTHON_LIBRARIAN_OPENER_VIDEO_SETUP_TYPE = setuptools

$(eval $(python-package))
