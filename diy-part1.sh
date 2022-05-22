#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# 修正Package/Makefile
sed -i s#system/opkg#opkg#g package/Makefile
sed -i s/64/1/g package/base-files/files/bin/config_generate
sed -i s/UTC/CST-8/g package/base-files/files/bin/config_generate
svn co https://github.com/ZarkZero/AX6-Compiler/trunk/config files
