# 简介

**rules** 路由规则自定义文件，可搭配 [**Loyalsoldier**](https://github.com/Loyalsoldier) 作者的 `surge-rules` 和 `clash-rules` 规则库文件使用，兼容 [surge](https://nssurge.com)、[surfboard](https://github.com/getsurfboard/surfboard/releases)，利用 GitHub Actions 北京时间每天早上 6 点自动构建，保证规则最新。

## 规则文件生成方式

### geoip.dat

- 通过仓库 [@Loyalsoldier/geoip](https://github.com/Loyalsoldier/geoip) 生成
- 其中全球 IP 地址（IPv4 和 IPv6）来源于 [MaxMind GeoLite2](https://dev.maxmind.com/geoip/geoip2/geolite2/)，`CN`（中国大陆）类别下的 IPv4 地址融合了 [ipip.net](https://github.com/17mon/china_ip_list) 和 [@gaoyifan/china-operator-ip](https://github.com/gaoyifan/china-operator-ip)，`CN`（中国大陆）类别下的 IPv6 地址融合了 [MaxMind GeoLite2](https://dev.maxmind.com/geoip/geoip2/geolite2/) 和 [@gaoyifan/china-operator-ip](https://github.com/gaoyifan/china-operator-ip)
- 新增类别（方便有特殊需求的用户使用）：
  - `geoip:cloudflare`
  - `geoip:cloudfront`
  - `geoip:facebook`
  - `geoip:fastly`
  - `geoip:google`
  - `geoip:netflix`
  - `geoip:telegram`
  - `geoip:twitter`

> 希望定制 `geoip.dat` 文件？查看仓库 [@Loyalsoldier/geoip](https://github.com/Loyalsoldier/geoip)。

### geosite.dat

- 基于 [@v2fly/domain-list-community/data](https://github.com/v2fly/domain-list-community/tree/master/data) 数据，通过仓库 [@Loyalsoldier/domain-list-custom](https://github.com/Loyalsoldier/domain-list-custom) 生成
- **加入大量中国大陆域名、Apple 域名和 Google 域名**：
  - [@felixonmars/dnsmasq-china-list/accelerated-domains.china.conf](https://github.com/felixonmars/dnsmasq-china-list/blob/master/accelerated-domains.china.conf) 加入到 `geosite:cn` 类别中
  - [@felixonmars/dnsmasq-china-list/apple.china.conf](https://github.com/felixonmars/dnsmasq-china-list/blob/master/apple.china.conf) 加入到 `geosite:geolocation-!cn` 类别中（如希望本文件中的 Apple 域名直连，请参考下面 [geosite 的 Routing 配置方式](https://github.com/Loyalsoldier/v2ray-rules-dat#geositedat-1)）
  - [@felixonmars/dnsmasq-china-list/google.china.conf](https://github.com/felixonmars/dnsmasq-china-list/blob/master/google.china.conf) 加入到 `geosite:geolocation-!cn` 类别中（如希望本文件中的 Google 域名直连，请参考下面 [geosite 的 Routing 配置方式](https://github.com/Loyalsoldier/v2ray-rules-dat#geositedat-1)）
- **加入 GFWList 域名**：
  - 基于 [@gfwlist/gfwlist](https://github.com/gfwlist/gfwlist) 数据，通过仓库 [@cokebar/gfwlist2dnsmasq](https://github.com/cokebar/gfwlist2dnsmasq) 生成
  - 加入到 `geosite:gfw` 类别中，供习惯于 PAC 模式并希望使用 [GFWList](https://github.com/gfwlist/gfwlist) 的用户使用
  - 同时加入到 `geosite:geolocation-!cn` 类别中
- **加入 Greatfire Analyzer 检测到的屏蔽域名**：
  - 通过仓库 [@Loyalsoldier/cn-blocked-domain](https://github.com/Loyalsoldier/cn-blocked-domain) 获取 [Greatfire Analyzer](https://zh.greatfire.org/analyzer) 检测到的在中国大陆被屏蔽的域名
  - 加入到 `geosite:greatfire` 类别中，可与上面的 `geosite:gfw` 类别同时使用，以达到域名黑名单的效果
  - 同时加入到 `geosite:geolocation-!cn` 类别中
- **加入 EasyList 和 EasyListChina 广告域名**：通过 [@AdblockPlus/EasylistChina+Easylist.txt](https://easylist-downloads.adblockplus.org/easylistchina+easylist.txt) 获取并加入到 `geosite:category-ads-all` 类别中
- **加入 AdGuard DNS Filter 广告域名**：通过 [@AdGuard/DNS-filter](https://kb.adguard.com/en/general/adguard-ad-filters#dns-filter) 获取并加入到 `geosite:category-ads-all` 类别中
- **加入 Peter Lowe 广告和隐私跟踪域名**：通过 [@PeterLowe/adservers](https://pgl.yoyo.org/adservers) 获取并加入到 `geosite:category-ads-all` 类别中
- **加入 Dan Pollock 广告域名**：通过 [@DanPollock/hosts](https://someonewhocares.org/hosts) 获取并加入到 `geosite:category-ads-all` 类别中
- **加入 Windows 操作系统相关的系统升级和隐私跟踪域名**：
  - 基于 [@crazy-max/WindowsSpyBlocker](https://github.com/crazy-max/WindowsSpyBlocker/tree/master/data/hosts) 数据
  - [**慎用**] Windows 操作系统使用的隐私跟踪域名 [@crazy-max/WindowsSpyBlocker/hosts/spy.txt](https://github.com/crazy-max/WindowsSpyBlocker/blob/master/data/hosts/spy.txt) 加入到 `geosite:win-spy` 类别中
  - [**慎用**] Windows 操作系统使用的系统升级域名 [@crazy-max/WindowsSpyBlocker/hosts/update.txt](https://github.com/crazy-max/WindowsSpyBlocker/blob/master/data/hosts/update.txt) 加入到 `geosite:win-update` 类别中
  - [**慎用**] Windows 操作系统附加的隐私跟踪域名 [@crazy-max/WindowsSpyBlocker/hosts/extra.txt](https://github.com/crazy-max/WindowsSpyBlocker/blob/master/data/hosts/extra.txt) 加入到 `geosite:win-extra` 类别中
  - 关于这三个类别的使用方式，请参考下面 [geosite 的 Routing 配置方式](https://github.com/Loyalsoldier/v2ray-rules-dat#geositedat-1)
- **可添加自定义直连、代理和广告域名**：由于上游域名列表更新缓慢或缺失某些域名，所以引入**需要添加的域名**列表。[`hidden 分支`](https://github.com/Loyalsoldier/v2ray-rules-dat/tree/hidden)里的三个文件 `direct.txt`、`proxy.txt` 和 `reject.txt`，分别存放自定义的需要添加的直连、代理、广告域名，最终分别加入到 `geosite:cn`、`geosite:geolocation-!cn` 和 `geosite:category-ads-all` 类别中
- **可移除自定义直连、代理和广告域名**：由于上游域名列表存在需要被移除的域名，所以引入**需要移除的域名**列表。[`hidden 分支`](https://github.com/Loyalsoldier/v2ray-rules-dat/tree/hidden)里的三个文件 `direct-need-to-remove.txt`、`proxy-need-to-remove.txt` 和 `reject-need-to-remove.txt`，分别存放自定义的需要从 `direct-list`（直连域名列表）、`proxy-list`（代理域名列表）和 `reject-list`（广告域名列表） 移除的域名

## 规则文件下载及使用方式

**下载地址**：

> 如果无法访问域名 `raw.githubusercontent.com`，可以使用第二个地址（`cdn.jsdelivr.net`），但是内容更新会有 12 小时的延迟。

- **geoip.dat**：
  - [https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat](https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geoip.dat](https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geoip.dat)
- **geosite.dat**：
  - [https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat](https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geosite.dat](https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geosite.dat)
- **直连域名列表 direct-list.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/direct-list.txt](https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/direct-list.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/direct-list.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/direct-list.txt)
- **代理域名列表 proxy-list.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/proxy-list.txt](https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/proxy-list.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/proxy-list.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/proxy-list.txt)
- **广告域名列表 reject-list.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/reject-list.txt](https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/reject-list.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/reject-list.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/reject-list.txt)
- **Apple 在中国大陆可直连的域名列表 apple-cn.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/apple-cn.txt](https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/apple-cn.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/apple-cn.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/apple-cn.txt)
- **Google 在中国大陆可直连的域名列表 google-cn.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/google-cn.txt](https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/google-cn.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/google-cn.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/google-cn.txt)
- **GFWList 域名列表 gfw.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/gfw.txt](https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/gfw.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/gfw.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/gfw.txt)
- **Greatfire 域名列表 greatfire.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/greatfire.txt](https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/greatfire.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/greatfire.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/greatfire.txt)
- **Windows 操作系统使用的隐私跟踪域名列表 win-spy.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/win-spy.txt](https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/win-spy.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/win-spy.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/win-spy.txt)
- **Windows 操作系统使用的系统升级域名列表 win-update.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/win-update.txt](https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/win-update.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/win-update.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/win-update.txt)
- **Windows 操作系统使用的附加隐私跟踪域名列表 win-extra.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/win-extra.txt](https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/win-extra.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/win-extra.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/win-extra.txt)

**使用方式**：

1. 安装适用于自己操作系统的客户端
2. 下载本项目的 `geoip.dat` 和 `geosite.dat`
3. 把下载下来的 `geoip.dat` 和 `geosite.dat` 放入到客户端的规则文件目录，替换掉原来的 `geoip.dat` 和 `geosite.dat`
4. 如果使用的是 V2Ray v4 版本客户端，配置可参考下面 👇👇👇

## 项目 Star 数增长趋势

[![Stargazers over time](https://starchart.cc/fbigun/rules.svg)](https://starchart.cc/fbigun/rules)

## 致谢

- [@v2fly/domain-list-community](https://github.com/v2fly/domain-list-community)
- [@Loyalsoldier/geoip](https://github.com/Loyalsoldier/geoip)
- [@Loyalsoldier/cn-blocked-domain](https://github.com/Loyalsoldier/cn-blocked-domain)
- [@Loyalsoldier/domain-list-custom]https://github.com/Loyalsoldier/domain-list-custom)
- [@Loyalsoldier/v2ray-rules-dat](https://github.com/Loyalsoldier/v2ray-rules-dat)
- [@Loyalsoldier/surge-rules]https://github.com/Loyalsoldier/surge-rules)
- [@Loyalsoldier/clash-rules]https://github.com/Loyalsoldier/clash-rules)
