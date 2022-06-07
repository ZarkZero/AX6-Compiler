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

#修正
svn co https://github.com/ZarkZero/AX6-Compiler/trunk/patch
cp -f patch/mac80211.sh package/kernel/mac80211/files/lib/wifi
sed -i s/10.10.10.1/192.168.1.1/g package/base-files/files/bin/config_generate


#更换版本
rm -rf package/qca/nss/qca-ssdk
rm -rf package/qca/nss/qca-nss-dp
#rm -rf package/qca/nss/qca-nss-clients
rm -rf package/qca/nss/qca-nss-ecm
rm -rf package/qca/nss/qca-nss-drv
rm -rf package/qca/nss/qca-nss-drv-64
rm -rf package/qca/nss/qca-nss-clients-64
#rm -rf package/qca/nss/qca-nss-ecm-64

#添加额外非必须软件包
git clone https://github.com/kiddin9/openwrt-packages.git package/openwrt-packages
rm -rf package/openwrt-packages/firewall
