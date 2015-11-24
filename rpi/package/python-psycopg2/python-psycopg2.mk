################################################################################
#
# python-psycopg2
#
################################################################################

PYTHON_PSYCOPG2_VERSION = 2.6.1
PYTHON_PSYCOPG2_SOURCE = psycopg2-$(PYTHON_PSYCOPG2_VERSION).tar.gz
PYTHON_PSYCOPG2_SITE = https://pypi.python.org/packages/source/p/psycopg2
PYTHON_PSYCOPG2_LICENSE = LGPL
PYTHON_PSYCOPG2_LICENSE_FILES = LICENSE
PYTHON_PSYCOPG2_DEPENDENCIES = postgresql-95
PYTHON_PSYCOPG2_SETUP_TYPE = distutils

# Override build command to pass custom command line arguments to build_ext
# (see patch for more information).
define PYTHON_PSYCOPG2_BUILD_CMDS
	(cd $($(PKG)_BUILDDIR)/; \
		$($(PKG)_BASE_ENV) $$($$(PKG)_ENV) \
		$(PYTHON_PSYCOPG2_PYTHON_INTERPRETER) setup.py \
		build_ext \
		--pg-version="$(POSTGRESQL_VERSION)" \
		--pg-prefix="$(STAGING_DIR)/usr" \
		build \
		$($(PKG)_BASE_BUILD_OPTS) $($(PKG)_BUILD_OPTS))
endef

# Override install command to pass custom command line arguments to build_ext
# (see patch for more information).
define PYTHON_PSYCOPG2_INSTALL_TARGET_CMDS
	(cd $($(PKG)_BUILDDIR)/; \
		$($(PKG)_BASE_ENV) $$($$(PKG)_ENV) \
		$(PYTHON_PSYCOPG2_PYTHON_INTERPRETER) setup.py \
		build_ext \
		--pg-version="$(POSTGRESQL_VERSION)" \
		--pg-prefix="$(STAGING_DIR)/usr" \
		install \
		$($(PKG)_BASE_INSTALL_TARGET_OPTS) $($(PKG)_INSTALL_TARGET_OPTS))
endef

$(eval $(python-package))
