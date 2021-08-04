#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# DIY扩展二合一了，在此处可以增加插件
#

cat >$NETIP <<-EOF
uci set network.lan.ipaddr='192.168.0.1'                                    # IPv4 地址(openwrt后台地址)
uci set network.lan.netmask='255.255.255.0'                                 # IPv4 子网掩码
uci set network.lan.gateway='192.168.0.1'                                   # IPv4 网关
uci set network.lan.broadcast='192.168.0.255'                               # IPv4 广播
uci set network.lan.dns='114.114.114.114 223.5.5.5'                         # DNS(多个DNS要用空格分开)
uci set network.lan.delegate='0'                                            # 去掉LAN口使用内置的 IPv6 管理
uci commit network                                                          # 不要删除跟注释,除非上面全部删除或注释掉了
#uci set dhcp.lan.ignore='1'                                                 # 关闭DHCP功能
#uci commit dhcp                                                             # 跟‘关闭DHCP功能’联动,同时启用或者删除跟注释
uci set system.@system[0].hostname='B70'                            # 修改主机名称为OpenWrt-123
EOF


sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile           # 选择argon为默认主题

sed -i "s/OpenWrt /${Author} compiled in $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" $ZZZ          # 增加个性名字${Author}默认为你的github账号

sed -i '/CYXluq4wUazHjmCDBCqXF/d' $ZZZ                                                            # 设置密码为空

#sed -i 's/PATCHVER:=5.10/PATCHVER:=5.4/g' target/linux/x86/Makefile                              # 默认内核5.10，修改内核为5.4



#git clone https://github.com/fw876/helloworld package/luci-app-ssr-plus
#git clone https://github.com/vernesong/OpenClash package/luci-app-openclash
#git clone https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr
#git clone https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall
#git clone https://github.com/frainzy1477/luci-app-clash package/luci-app-clash
#git clone -b main https://github.com/xiaorouji/openwrt-passwall.git package/lean/package  #passwall
#git clone -b master https://github.com/jerrykuku/lua-maxminddb.git package/lean/package #git lua-maxminddb 依赖
#git clone -b master https://github.com/jerrykuku/luci-app-vssr.git package/lean/package 
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-openclash.git package/diy/luci-app-openclash

#find . -name 'luci-app-jd-dailybonus' -o -name 'dailybonus' | xargs -i rm -rf {}
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git   package/lean/luci-app-jd-dailybonus  #京东签到




#find . -name 'luci-app-argon-config' -o -name 'luci-theme-argon' | xargs -i rm -rf {}
#git clone -b 18.06 https://github.com/lee29/luci-theme-argon package/luci-theme-argon
#git clone https://github.com/lee29/luci-app-argon-config package/luci-app-argon-config
#rm -rf ./package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/lee29/luci-theme-argon.git package/diy/luci-theme-argon  #新的argon主题
#git clone -b master https://github.com/lee29/luci-app-argon-config.git package/diy/luci-app-argon-config







# 修改插件名字
#sed -i 's/"aMule设置"/"电驴下载"/g' `grep "aMule设置" -rl ./`
#sed -i 's/"网络存储"/"存储"/g' `grep "网络存储" -rl ./`
#sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' `grep "Turbo ACC 网络加速" -rl ./`
#sed -i 's/"实时流量监测"/"流量"/g' `grep "实时流量监测" -rl ./`
#sed -i 's/"KMS 服务器"/"KMS激活"/g' `grep "KMS 服务器" -rl ./`
#sed -i 's/"TTYD 终端"/"命令窗"/g' `grep "TTYD 终端" -rl ./`
#sed -i 's/"USB 打印服务器"/"打印服务"/g' `grep "USB 打印服务器" -rl ./`
#sed -i 's/"Web 管理"/"Web"/g' `grep "Web 管理" -rl ./`
#sed -i 's/"管理权"/"改密码"/g' `grep "管理权" -rl ./`
#sed -i 's/"带宽监控"/"监控"/g' `grep "带宽监控" -rl ./`
#sed -i 's/"Argon 主题设置"/"Argon设置"/g' `grep "Argon 主题设置" -rl ./`



