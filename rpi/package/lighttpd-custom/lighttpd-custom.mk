################################################################################
#
# lighttpd-custom
#
################################################################################

LIGHTTPD_CUSTOM_VERSION_MAJOR = 1.4
LIGHTTPD_CUSTOM_VERSION = $(LIGHTTPD_CUSTOM_VERSION_MAJOR).39
LIGHTTPD_CUSTOM_SOURCE = lighttpd-$(LIGHTTPD_CUSTOM_VERSION).tar.xz
LIGHTTPD_CUSTOM_SITE = http://download.lighttpd.net/lighttpd/releases-$(LIGHTTPD_CUSTOM_VERSION_MAJOR).x
LIGHTTPD_CUSTOM_LICENSE = BSD-3c
LIGHTTPD_CUSTOM_LICENSE_FILES = COPYING
LIGHTTPD_CUSTOM_DEPENDENCIES = host-pkgconf
LIGHTTPD_CUSTOM_CONF_OPTS = \
	--libdir=/usr/lib/lighttpd \
	--libexecdir=/usr/lib

MOD_MULTIALIAS_VERSION = 6fb62ee4e5915cc866b404280ee8e0467a21e209
MOD_MULTIALIAS_SOURCE = $(MOD_MULTIALIAS_VERSION).tar.gz
MOD_MULTIALIAS_SITE = https://github.com/Outernet-Project/lighttpd-mod-multialias/archive
MOD_MULTIALIAS_URL = $(MOD_MULTIALIAS_SITE)/$(MOD_MULTIALIAS_SOURCE)

ifeq ($(BR2_PACKAGE_LIGHTTPD_CUSTOM_OPENSSL),y)
LIGHTTPD_CUSTOM_DEPENDENCIES += openssl
LIGHTTPD_CUSTOM_CONF_OPTS += --with-openssl
else
LIGHTTPD_CUSTOM_CONF_OPTS += --without-openssl
endif

ifeq ($(BR2_PACKAGE_LIGHTTPD_CUSTOM_ZLIB),y)
LIGHTTPD_CUSTOM_DEPENDENCIES += zlib
LIGHTTPD_CUSTOM_CONF_OPTS += --with-zlib
else
LIGHTTPD_CUSTOM_CONF_OPTS += --without-zlib
endif

ifeq ($(BR2_PACKAGE_LIGHTTPD_CUSTOM_BZIP2),y)
LIGHTTPD_CUSTOM_DEPENDENCIES += bzip2
LIGHTTPD_CUSTOM_CONF_OPTS += --with-bzip2
else
LIGHTTPD_CUSTOM_CONF_OPTS += --without-bzip2
endif

ifeq ($(BR2_PACKAGE_LIGHTTPD_CUSTOM_PCRE),y)
LIGHTTPD_CUSTOM_CONF_ENV = PCRECONFIG=$(STAGING_DIR)/usr/bin/pcre-config
LIGHTTPD_CUSTOM_DEPENDENCIES += pcre
LIGHTTPD_CUSTOM_CONF_OPTS += --with-pcre
else
LIGHTTPD_CUSTOM_CONF_OPTS += --without-pcre
endif

ifeq ($(BR2_PACKAGE_LIGHTTPD_CUSTOM_WEBDAV),y)
LIGHTTPD_CUSTOM_DEPENDENCIES += libxml2 sqlite
LIGHTTPD_CUSTOM_CONF_OPTS += --with-webdav-props --with-webdav-locks
else
LIGHTTPD_CUSTOM_CONF_OPTS += --without-webdav-props --without-webdav-locks
endif

ifeq ($(BR2_PACKAGE_LIGHTTPD_CUSTOM_LUA),y)
LIGHTTPD_CUSTOM_DEPENDENCIES += lua
LIGHTTPD_CUSTOM_CONF_OPTS += --with-lua
else
LIGHTTPD_CUSTOM_CONF_OPTS += --without-lua
endif

define LIGHTTPD_ADD_CUSTOM_PLUGINS
	$(call DOWNLOAD,$(MOD_MULTIALIAS_URL))
	$(if $(MOD_MULTIALIAS_SOURCE),$(INFLATE$(suffix $(MOD_MULTIALIAS_SOURCE))) $(DL_DIR)/$(MOD_MULTIALIAS_SOURCE) | \
	$(TAR) --strip-components=1 -C $(@D)/src/ $(TAR_OPTIONS) -)
endef

LIGHTTPD_CUSTOM_PRE_CONFIGURE_HOOKS += LIGHTTPD_ADD_CUSTOM_PLUGINS

define LIGHTTPD_CUSTOM_INSTALL_CONFIG
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/etc/lighttpd/conf.d
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/var/www
	$(INSTALL) -D -m 0644 $(@D)/doc/config/lighttpd.conf \
		$(TARGET_DIR)/etc/lighttpd/lighttpd.conf
	$(INSTALL) -D -m 0644 $(@D)/doc/config/modules.conf \
		$(TARGET_DIR)/etc/lighttpd/modules.conf
	$(INSTALL) -D -m 0644 $(@D)/doc/config/conf.d/access_log.conf \
		$(TARGET_DIR)/etc/lighttpd/conf.d/access_log.conf
	$(INSTALL) -D -m 0644 $(@D)/doc/config/conf.d/debug.conf \
		$(TARGET_DIR)/etc/lighttpd/conf.d/debug.conf
	$(INSTALL) -D -m 0644 $(@D)/doc/config/conf.d/dirlisting.conf \
		$(TARGET_DIR)/etc/lighttpd/conf.d/dirlisting.conf
	$(INSTALL) -D -m 0644 $(@D)/doc/config/conf.d/mime.conf \
		$(TARGET_DIR)/etc/lighttpd/conf.d/mime.conf
endef

LIGHTTPD_CUSTOM_POST_INSTALL_TARGET_HOOKS += LIGHTTPD_CUSTOM_INSTALL_CONFIG

define LIGHTTPD_CUSTOM_INSTALL_INIT_SYSV
	$(INSTALL) -D -m 0755 $(BR2_EXTERNAL)/package/lighttpd-custom/S50lighttpd \
		$(TARGET_DIR)/etc/init.d/S50lighttpd
endef

define LIGHTTPD_CUSTOM_INSTALL_INIT_SYSTEMD
	$(INSTALL) -D -m 0644 $(@D)/doc/systemd/lighttpd.service \
		$(TARGET_DIR)/usr/lib/systemd/system/lighttpd.service

	mkdir -p $(TARGET_DIR)/etc/systemd/system/multi-user.target.wants

	ln -fs ../../../../usr/lib/systemd/system/lighttpd.service \
		$(TARGET_DIR)/etc/systemd/system/multi-user.target.wants/lighttpd.service
endef

$(eval $(autotools-package))
