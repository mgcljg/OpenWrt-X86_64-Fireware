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
#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
#git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/diy/luci-theme-edge  #主题-edge
#git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git package/diy/luci-theme-infinityfreedom  #透明主题
git clone -b master https://github.com/vernesong/OpenClash.git package/diy/luci-app-openclash  #openclash出国软件
git clone https://github.com/frainzy1477/luci-app-clash.git package/diy/luci-app-clash  #clash出国软件
#git clone https://github.com/tty228/luci-app-serverchan.git package/diy/luci-app-serverchan  #微信推送
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/diy/luci-app-smartdns  #smartdns DNS加速
#git clone https://github.com/garypang13/luci-app-eqos.git package/diy/luci-app-eqos  #内网IP限速工具
#git clone https://github.com/jerrykuku/node-request.git package/diy/node-request  #京东签到依赖
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/diy/luci-app-jd-dailybonus  #京东签到
#
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
#
# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#
#增加LEDE的ShadowSocksR Plus+出国软件 (源码自带passwall出国软件)
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
