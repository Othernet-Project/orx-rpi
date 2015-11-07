################################################################################
#
# python-librarian-twitter
#
################################################################################

PYTHON_LIBRARIAN_TWITTER_VERSION = 37e74d3300a5858c4f7176d1e41814dee5e5eea4
PYTHON_LIBRARIAN_TWITTER_SOURCE = $(PYTHON_LIBRARIAN_TWITTER_VERSION).tar.gz
PYTHON_LIBRARIAN_TWITTER_SITE = https://github.com/Outernet-Project/librarian-twitter/archive/
PYTHON_LIBRARIAN_TWITTER_LICENSE = GPL
PYTHON_LIBRARIAN_TWITTER_DEPENDENCIES = python-librarian-core python-librarian-content
PYTHON_LIBRARIAN_TWITTER_SETUP_TYPE = setuptools

$(eval $(python-package))
