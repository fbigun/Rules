# 简介

**rules** 路由规则自定义文件，可搭配 [**Loyalsoldier**](https://github.com/Loyalsoldier) 作者的 `surge-rules`规则库文件使用，兼容 [surge](https://nssurge.com)、[surfboard](https://github.com/getsurfboard/surfboard/releases)。

## 说明

本项目规则集仅有三个文件，分别为 `proxy.txt` 、 `direct.txt` 和 `reject.txt` ，分别代表了自用的三种规则，本规则是搭配 [Loyalsoldier/surge-rules](https://github.com/Loyalsoldier/surge-rules) 一起使用的，上述三种规则都是使用 **rule-set** 。

### ⚠️ 注意：

- **DOMAIN-SET** 同时适用于 Surge for Mac **v3.5.1** 及更新的版本、Surge for iOS **v4.2.2** 及更新的版本，拥有比 RULE-SET 更优秀的匹配效率，建议优先使用。
- **RULE-SET** 同时适用于 Surge for Mac **v3.0** 及更新的版本、Surge for iOS **v3.4** 及更新的版本。

## Loyalsoldier/surge-rules 规则

> 如果无法访问域名 `raw.githubusercontent.com`，可以使用第二个地址 `ghproxy.com` 进行反向代理 GitHub 的地址，也可以使用第三个地址（`cdn.jsdelivr.net`），但是内容更新会有 12 小时的延迟。

### DOMAIN-SET:

- **直连域名列表 direct.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/direct.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/direct.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/direct.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/direct.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/direct.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/direct.txt)
- **代理域名列表 proxy.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/proxy.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/proxy.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/proxy.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/proxy.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/proxy.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/proxy.txt)
- **广告域名列表 reject.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/reject.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/reject.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/reject.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/reject.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/reject.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/reject.txt)
- **私有网络专用域名列表 private.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/private.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/private.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/private.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/private.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/private.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/private.txt)
- **Apple 在中国大陆可直连的域名列表 apple.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/apple.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/apple.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/apple.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/apple.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/apple.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/apple.txt)
- **iCloud 域名列表 icloud.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/icloud.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/icloud.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/icloud.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/icloud.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/icloud.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/icloud.txt)
- **[慎用]Google 在中国大陆可直连的域名列表 google.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/google.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/google.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/google.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/google.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/google.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/google.txt)
- **GFWList 域名列表 gfw.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/gfw.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/gfw.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/gfw.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/gfw.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/gfw.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/gfw.txt)
- **非中国大陆使用的顶级域名列表 tld-not-cn.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/tld-not-cn.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/tld-not-cn.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/tld-not-cn.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/tld-not-cn.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/tld-not-cn.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/tld-not-cn.txt)
- **Telegram 使用的 IP 地址列表 telegramcidr.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/telegramcidr.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/telegramcidr.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/telegramcidr.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/telegramcidr.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/telegramcidr.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/telegramcidr.txt)
- **中国大陆 IP 地址列表 cncidr.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/cncidr.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/cncidr.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/cncidr.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/cncidr.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/cncidr.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/cncidr.txt)

### RULE-SET:

- **直连域名列表 direct.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/direct.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/direct.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/direct.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/direct.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/direct.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/direct.txt)
- **代理域名列表 proxy.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/proxy.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/proxy.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/proxy.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/proxy.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/proxy.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/proxy.txt)
- **广告域名列表 reject.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/reject.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/reject.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/reject.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/reject.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/reject.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/reject.txt)
- **私有网络专用域名列表 private.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/private.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/private.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/private.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/private.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/private.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/private.txt)
- **Apple 在中国大陆可直连的域名列表 apple.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/apple.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/apple.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/apple.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/apple.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/apple.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/apple.txt)
- **iCloud 域名列表 icloud.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/icloud.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/icloud.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/icloud.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/icloud.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/icloud.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/icloud.txt)
- **[慎用] Google 在中国大陆可直连的域名列表 google.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/google.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/google.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/google.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/google.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/google.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/google.txt)
- **GFWList 域名列表 gfw.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/gfw.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/gfw.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/gfw.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/gfw.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/gfw.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/gfw.txt)
- **非中国大陆使用的顶级域名列表 tld-not-cn.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/tld-not-cn.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/tld-not-cn.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/tld-not-cn.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/tld-not-cn.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/tld-not-cn.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/tld-not-cn.txt)
- **Telegram 使用的 IP 地址列表 telegramcidr.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/telegramcidr.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/telegramcidr.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/telegramcidr.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/telegramcidr.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/telegramcidr.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/telegramcidr.txt)
- **中国大陆 IP 地址列表 cncidr.txt**：
  - [https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/cncidr.txt](https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/cncidr.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/cncidr.txt](https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/cncidr.txt)
  - [https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/cncidr.txt](https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/cncidr.txt)

## 本项目规则文件下载及使用方式

> 如果无法访问域名 `raw.githubusercontent.com`，可以使用第二个地址 `ghproxy.com`反向代理，也可以使用 `pagure.io` 托管的进行连接，还可以使用 `cdn.jsdelivr.net` ，但是内容更新会有 12 小时的延迟。

- **个人使用的直连地址 direct.txt**：
  - [https://raw.githubusercontent.com/fbigun/rules/master/direct.txt](https://raw.githubusercontent.com/fbigun/rules/master/direct.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/fbigun/rules/master/direct.txt](https://ghproxy.com/raw.githubusercontent.com/fbigun/rules/master/direct.txt)
  - [https://pagure.io/rules/raw/master/f/direct.txt](https://pagure.io/rules/raw/master/f/direct.txt)
  - [https://cdn.jsdelivr.net/gh/fbigun/rules@master/direct.txt](https://cdn.jsdelivr.net/gh/fbigun/rules@master/direct.txt)
- **个人使用的直连地址 reject.txt**：
  - [https://raw.githubusercontent.com/fbigun/rules/master/reject.txt](https://raw.githubusercontent.com/fbigun/rules/master/reject.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/fbigun/rules/master/reject.txt](https://ghproxy.com/raw.githubusercontent.com/fbigun/rules/master/reject.txt)
  - [https://pagure.io/rules/raw/master/f/reject.txt](https://pagure.io/rules/raw/master/f/reject.txt)
  - [https://cdn.jsdelivr.net/gh/fbigun/rules@master/reject.txt](https://cdn.jsdelivr.net/gh/fbigun/rules@master/reject.txt)
- **个人使用的直连地址 proxy.txt**：
  - [https://raw.githubusercontent.com/fbigun/rules/master/proxy.txt](https://raw.githubusercontent.com/fbigun/rules/master/proxy.txt)
  - [https://ghproxy.com/raw.githubusercontent.com/fbigun/rules/master/proxy.txt](https://ghproxy.com/raw.githubusercontent.com/fbigun/rules/master/proxy.txt)
  - [https://pagure.io/rules/raw/master/f/proxy.txt](https://pagure.io/rules/raw/master/f/proxy.txt)
  - [https://cdn.jsdelivr.net/gh/fbigun/rules@master/proxy.txt](https://cdn.jsdelivr.net/gh/fbigun/rules@master/proxy.txt)

## 使用方式

1. 安装适用于自己操作系统的客户端
2. 在规则文件中导入相应的规则
3. 启动客户端代理

## demo

- **surgio 使用的规则生成模板**
  - demo/clash.tpl
  - demo/surfboard.tpl

## 致谢

- [@v2fly/domain-list-community](https://github.com/v2fly/domain-list-community)
- [@Loyalsoldier/geoip](https://github.com/Loyalsoldier/geoip)
- [@Loyalsoldier/cn-blocked-domain](https://github.com/Loyalsoldier/cn-blocked-domain)
- [@Loyalsoldier/domain-list-custom](https://github.com/Loyalsoldier/domain-list-custom)
- [@Loyalsoldier/v2ray-rules-dat](https://github.com/Loyalsoldier/v2ray-rules-dat)
- [@Loyalsoldier/surge-rules](https://github.com/Loyalsoldier/surge-rules)
- [@Loyalsoldier/clash-rules](https://github.com/Loyalsoldier/clash-rules)
