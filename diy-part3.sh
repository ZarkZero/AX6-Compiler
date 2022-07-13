#!/bin/bash

#添加额外非必须软件包
git clone https://github.com/kiddin9/openwrt-packages.git package/openwrt-packages
rm -rf package/openwrt-packages/firewall
rm -rf package/openwrt-packages/shortcut-fe
svn co https://github.com/Boos4721/openwrt/trunk/package/firmware/ath11k-board package/openwrt-packages/ath11k-board
svn co https://github.com/Boos4721/openwrt/trunk/package/lean/shortcut-fe package/openwrt-packages/shortcut-fe


#Custom Package
svn co https://github.com/Boos4721/openwrt/trunk/package/qca/nss/qca-rfs package/openwrt-packages/qca-rfs
svn co https://github.com/Boos4721/openwrt/trunk/package/qca/nss/qca-nss-gmac package/openwrt-packages/qca-nss-gmac

