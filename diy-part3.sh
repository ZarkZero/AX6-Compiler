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

# Modify default IP
#sed -i 's/10.10.10.1/192.168.1.1/g' package/base-files/files/bin/config_generate

# Host Rename
#sed -i 's/OpenWrt/Redmi-AX6/g' package/base-files/files/bin/config_generate

# 修改连接数
#sed -i 's/net.netfilter.nf_conntrack_max=.*/net.netfilter.nf_conntrack_max=165535/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
#修正连接数（by ベ七秒鱼ベ）
#sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf


#添加额外非必须软件包
#git clone https://github.com/vernesong/OpenClash.git package/OpenClash
#git clone https://github.com/zzsj0928/luci-app-pushbot.git package/luci-app-pushbot
#git clone https://github.com/kenzok8/small-package package/small-package
git clone https://github.com/kiddin9/openwrt-packages.git package/openwrt-packages
rm -rf package/openwrt-packages/firewall
rm -rf package/openwrt-packages/shortcut-fe


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
svn co https://github.com/Boos4721/openwrt/trunk/package/qca/nss/qca-rfs package/qca/qca-rfs
svn co https://github.com/Boos4721/openwrt/trunk/package/qca/nss/qca-nss-gmac package/qca/qca-nss-gmac

#git clone https://github.com/fullcone-nat-nftables/nft-fullcone package/custom
#svn co https://github.com/wongsyrone/lede-1/trunk/package/network/utils/nftables package/network/utils/nftables
#svn co https://github.com/wongsyrone/lede-1/trunk/package/libs/libnftnl package/libs/libnftnl
#svn co https://github.com/wongsyrone/lede-1/trunk/package/network/config/firewall4 package/network/config/firewall4
