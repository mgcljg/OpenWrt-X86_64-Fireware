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
#
# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#
#增加LEDE的ShadowSocksR Plus+出国软件
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/shadowsocksr-libev package/diy/shadowsocksr-libev
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/pdnsd-alt package/diy/pdnsd-alt
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/microsocks package/diy/microsocks
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/dns2socks package/diy/dns2socks
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/simple-obfs package/diy/simple-obfs
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/v2ray-plugin package/diy/v2ray-plugin
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/v2ray package/diy/v2ray
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/trojan package/diy/trojan
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ipt2socks package/diy/ipt2socks
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/redsocks2 package/diy/redsocks2
