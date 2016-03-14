################################################################################
#
# python-librarian-twitter
#
################################################################################

PYTHON_LIBRARIAN_TWITTER_VERSION = c20ab45b8cb57c616c5b60ba5dbb2fce007d2257
PYTHON_LIBRARIAN_TWITTER_SITE = $(call github,Outernet-Project,librarian-twitter,$(PYTHON_LIBRARIAN_TWITTER_VERSION))
PYTHON_LIBRARIAN_TWITTER_LICENSE = GPL
PYTHON_LIBRARIAN_TWITTER_SETUP_TYPE = setuptools

$(eval $(python-package))
