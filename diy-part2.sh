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
sed -i s/10.10.10.1/192.168.1.1/g package/base-files/files/bin/config_generate
sed -i s#Boos4721/packages.git#coolsnowwolf/packages.git#g feeds.conf.default
#sed -i s#github.com/Boos4721/packages.git#git.openwrt.org/feed/packages.git#g feeds.conf.default

#修改内核版本
sed -i s/5.15/5.4/g target/linux/ipq807x/Makefile

#更换版本
rm -rf package/qca/nss/qca-ssdk
rm -rf package/qca/nss/qca-nss-dp
rm -rf package/qca/nss/qca-nss-clients
rm -rf package/qca/nss/qca-nss-ecm
rm -rf package/qca/nss/qca-nss-drv
#cp -rf patch/qca/qca-nss-clients-64 package/qca/nss
#cp -rf patch/qca/qca-nss-ecm-64 package/qca/nss
#cp -rf patch/qca/qca-nss-drv-64 package/qca/nss
#cp -rf patch/qca/qca-ssdk package/qca/nss


#添加额外非必须软件包
git clone https://github.com/kiddin9/openwrt-packages.git package/openwrt-packages


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
