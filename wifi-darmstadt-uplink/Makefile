include $(TOPDIR)/rules.mk

PKG_NAME:=wifi-darmstadt-uplink
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_MAINTAINER:=David Bauer <mail@david-bauer.net>
PKG_LICENSE:=GPL-2.0-or-later

include $(TOPDIR)/../package/gluon.mk

define Package/wifi-darmstadt-uplink
  TITLE:=Automatically use public WiFi as WAN uplink
  DEPENDS:=+gluon-core
endef

$(eval $(call BuildPackageGluon,wifi-darmstadt-uplink))
