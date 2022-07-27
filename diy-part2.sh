#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Host Rename
#sed -i 's/OpenWrt/Redmi-AX6/g' package/base-files/files/bin/config_generate

# 修改连接数
#sed -i 's/net.netfilter.nf_conntrack_max=.*/net.netfilter.nf_conntrack_max=165535/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
#修正连接数（by ベ七秒鱼ベ）
#sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf
#修正
svn co https://github.com/ZarkZero/AX6-Compiler/trunk/patch
cp -f patch/mac80211.sh package/kernel/mac80211/files/lib/wifi
cp -f patch/ath.mk package/kernel/mac80211
#cp -f patch/mac80211.mk package/kernel/mac80211/Makefile

sed -i s/10.10.10.1/192.168.1.1/g package/base-files/files/bin/config_generate
#sed -i s#Boos4721/packages.git#coolsnowwolf/packages.git#g feeds.conf.default
#sed -i s#github.com/Boos4721/packages.git#git.openwrt.org/feed/packages.git#g feeds.conf.default


#更换版本
#rm -rf package/qca/nss/qca-ssdk
#rm -rf package/qca/nss/qca-nss-dp
#rm -rf package/qca/nss/qca-nss-clients
#rm -rf package/qca/nss/qca-nss-ecm
#rm -rf package/qca/nss/qca-nss-drv
#rm -rf package/qca/nss/qca-nss-drv-64
#rm -rf package/qca/nss/qca-nss-clients-64
#rm -rf package/qca/nss/qca-nss-ecm-64
#cp -rf patch/qca/qca-nss-clients-64 package/qca/nss
#cp -rf patch/qca/qca-nss-ecm-64 package/qca/nss
#cp -rf patch/qca/qca-nss-drv-64 package/qca/nss
#cp -rf patch/qca/qca-ssdk package/qca/nss
#cp -rf patch/ipq807x target/linux
#rm -rf target/linux/files
#mv target/linux/files-5.10 target/linux/files
#cp -f patch/ipq807x/arch/ipq8074-ess.dtsi target/linux/ipq807x/files/arch/arm64/boot/dts/qcom
#cp -rf patch/ipq807x/patches-5.4 target/linux/ipq807x
#cp -rf patch/ipq807x/config-5.4 target/linux/ipq807x

#添加额外非必须软件包
git clone https://github.com/kiddin9/openwrt-packages.git package/openwrt-packages
#svn co https://github.com/openwrt/luci/trunk/applications/luci-app-ttyd package/openwrt-packages/luci-app-ttyd
svn co https://github.com/openwrt/packages/trunk/utils/ttyd package/openwrt-packages/ttdy
#rm -rf package/openwrt-packages/miniupnpd-nft/patches/500-0002-check-libcap-first.patch
#cp -f patch/miniupnpd-nft.mk feeds/packages/net/miniupnpd/Makefile
rm -rf package/openwrt-packages/firewall
rm -rf package/openwrt-packages/shortcut-fe
#rm -rf feeds/packages/net/miniupnpd
#rm -rf package/packages/net/miniupnpd
#rm -rf feeds/luci/applications/luci-app-upnp
#rm -rf package/luci/applications/luci-app-upnp
#rm -rf feeds/luci/applications/luci-app-ddns
#rm -rf package/luci/applications/luci-app-ddns
#rm -rf feeds/luci/applications/luci-app-firewall
#rm -rf package/luci/applications/luci-app-firewall
rm -rf package/openwrt-packages/miniupnpd
rm -rf package/openwrt-packages/miniupnpd-nft
#rm -rf package/openwrt-packages/fullconenat
#rm -rf target/linux/ipq807x/files/arch/arm64/boot/dts/qcom/ipq8074-ess.dtsi

#Custom Theme
#svn co https://github.com/harry3633/openwrt-package/trunk/lienol/luci-theme-bootstrap-mod package/openwrt-packages/luci-theme-bootstrap-mod
#svn co https://github.com/harry3633/openwrt-package/trunk/lienol/luci-theme-argon-light-mod package/openwrt-packages/luci-theme-argon-light-mod
#svn co https://github.com/harry3633/openwrt-package/trunk/lienol/luci-theme-argon-dark-mod package/openwrt-packages/luci-theme-argon-dark-mod
#svn co https://github.com/a520ass/openwrt-third-packages/trunk/luci-theme-netgear package/openwrt-packages/luci-theme-netgear
#svn co https://github.com/kenzok8/small-package/trunk/luci-theme-argonne package/openwrt-packages/luci-theme-argonne
#svn co https://github.com/kenzok8/small-package/trunk/luci-theme-atmaterial_new package/openwrt-packages/luci-theme-atmaterial_new
#svn co https://github.com/kenzok8/small-package/trunk/luci-theme-neobird package/openwrt-packages/luci-theme-neobird
#svn co https://github.com/kenzok8/small-package/trunk/luci-theme-mcat package/openwrt-packages/luci-theme-mcat
#svn co https://github.com/kenzok8/small-package/trunk/luci-theme-dog package/openwrt-packages/luci-theme-dog
#svn co https://github.com/kenzok8/small-package/trunk/luci-app-argon-config package/openwrt-packages/luci-app-argon-config
#svn co https://github.com/kenzok8/small-package/trunk/luci-app-argonne-config package/openwrt-packages/luci-app-argonne-config

#Custom Package
#svn co https://github.com/Boos4721/openwrt/trunk/package package/boos-packages
