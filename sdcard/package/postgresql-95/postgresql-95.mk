###############################################################################
#
# postgresql-95
# 
###############################################################################

POSTGRESQL_95_VERSION = 9.5.0
POSTGRESQL_95_SOURCE = postgresql-$(POSTGRESQL_95_VERSION).tar.bz2
POSTGRESQL_95_SITE = http://ftp.postgresql.org/pub/source/v$(POSTGRESQL_95_VERSION)
POSTGRESQL_95_LICENSE = PostgreSQL
POSTGRESQL_95_LICENSE_FILES = COPYRIGHT
POSTGRESQL_95_INSTALL_STAGING = YES
POSTGRESQL_95_CONFIG_SCRIPTS = pg_config
POSTGRESQL_95_CONF_ENV = ac_cv_type_struct_sockaddr_in6=yes \
		      pgac_cv_snprintf_long_long_int_format="%lld" \
		      pgac_cv_snprintf_size_t_support=yes
POSTGRESQL_95_AUTORECONF = YES
POSTGRESQL_95_CONF_OPTS = --disable-rpath

ifeq ($(BR2_TOOLCHAIN_USES_UCLIBC),y)
# PostgreSQL does not build against uClibc with locales
# enabled, due to an uClibc bug, see
# http://lists.uclibc.org/pipermail/uclibc/2014-April/048326.html
# so overwrite automatic detection and disable locale support
POSTGRESQL_95_CONF_ENV += pgac_cv_type_locale_t=no
endif

ifneq ($(BR2_TOOLCHAIN_HAS_THREADS),y)
POSTGRESQL_95_CONF_OPTS += --disable-thread-safety
endif

ifeq ($(BR2_arcle)$(BR2_arceb)$(BR2_microblazeel)$(BR2_microblazebe)$(BR2_nios2)$(BR2_xtensa),y)
POSTGRESQL_95_CONF_OPTS += --disable-spinlocks
endif

ifeq ($(BR2_PACKAGE_READLINE),y)
POSTGRESQL_95_DEPENDENCIES += readline
else
POSTGRESQL_95_CONF_OPTS += --without-readline
endif

ifeq ($(BR2_PACKAGE_ZLIB),y)
POSTGRESQL_95_DEPENDENCIES += zlib
else
POSTGRESQL_95_CONF_OPTS += --without-zlib
endif

ifeq ($(BR2_PACKAGE_TZDATA),y)
POSTGRESQL_95_DEPENDENCIES += tzdata
POSTGRESQL_95_CONF_OPTS += --with-system-tzdata=/usr/share/zoneinfo
else
POSTGRESQL_95_DEPENDENCIES += host-zic
POSTGRESQL_95_CONF_ENV += ZIC="$(ZIC)"
endif

ifeq ($(BR2_PACKAGE_OPENSSL),y)
POSTGRESQL_95_DEPENDENCIES += openssl
POSTGRESQL_95_CONF_OPTS += --with-openssl
endif

define POSTGRESQL_95_USERS
	postgres -1 postgres -1 * /var/lib/pgsql /bin/sh - PostgreSQL Server
endef

define POSTGRESQL_95_INSTALL_TARGET_FIXUP
	$(INSTALL) -dm 0700 $(TARGET_DIR)/var/lib/pgsql
	$(RM) -rf $(TARGET_DIR)/usr/lib/postgresql/pgxs
endef

POSTGRESQL_95_POST_INSTALL_TARGET_HOOKS += POSTGRESQL_95_INSTALL_TARGET_FIXUP

define POSTGRESQL_95_INSTALL_CUSTOM_PG_CONFIG
	$(INSTALL) -m 0755 -D package/postgresql/pg_config \
		$(STAGING_DIR)/usr/bin/pg_config
endef

POSTGRESQL_95_POST_INSTALL_STAGING_HOOKS += POSTGRESQL_95_INSTALL_CUSTOM_PG_CONFIG

define POSTGRESQL_95_INSTALL_INIT_SYSV
	$(INSTALL) -m 0755 -D package/postgresql/S50postgresql \
		$(TARGET_DIR)/etc/init.d/S50postgresql
endef

define POSTGRESQL_95_INSTALL_INIT_SYSTEMD
	$(INSTALL) -D -m 644 package/postgresql/postgresql.service \
		$(TARGET_DIR)/usr/lib/systemd/system/postgresql.service
	mkdir -p $(TARGET_DIR)/etc/systemd/system/multi-user.target.wants
	ln -fs ../../../../usr/lib/systemd/system/postgresql.service \
		$(TARGET_DIR)/etc/systemd/system/multi-user.target.wants/postgresql.service
endef

$(eval $(autotools-package))
