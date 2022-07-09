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


#更换版本
rm -rf package/qca/nss/qca-nss-clients
rm -rf package/qca/nss/qca-nss-ecm
rm -rf package/qca/nss/qca-nss-drv
#rm -rf package/qca/nss/qca-nss-drv-64
#rm -rf package/qca/nss/qca-nss-clients-64
#rm -rf package/qca/nss/qca-nss-ecm-64
#rm -rf package/qca/nss/qca-nss-dp
#svn co https://github.com/robimarko/nss-packages/trunk/qca/qca-nss-dp package/qca/nss/qca-nss-dp
svn co https://github.com/Boos4721/openwrt/trunk/package/firmware/ath11k-board package/firmware/ath11k-board

#添加额外非必须软件包
git clone https://github.com/kiddin9/openwrt-packages.git package/openwrt-packages
rm -rf package/openwrt-packages/firewall
rm -rf package/openwrt-packages/shortcut-fe
