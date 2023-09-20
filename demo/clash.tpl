#!MANAGED-CONFIG {{ downloadUrl }} interval=43200 strict=true
# https://dreamacro.github.io/clash/zh_CN/configuration/configuration-reference.html
# Create: {\{ new Date() }\}

external-controller: 127.0.0.1:9090
mixed-port: 7890

dns:
  enable: true
  default-nameserver:
    - 119.29.29.29
    - 223.5.5.5
  fake-ip-filter:
    - '*.srv.nintendo.net'
    - '*.stun.playstation.net'
    - 'xbox.*.microsoft.com'
    - '*.xboxlive.com'
    - stun.l.google.com
    - localhost.ptlogin2.qq.com
  nameserver:
    - 119.29.29.29
    - 223.5.5.5
    - https://9.9.9.9/dns-query
    - dhcp://en0

proxies: {{ getClashNodes(nodeList) | json }}

proxy-groups:
  - name: 🚀 区域代理
    type: select
    proxies: ["🚀 香港节点", "🚀 美国节点", "🚀 日本节点", "🚀 备用节点"]

  - name: 🐟 其余策略
    type: select
    proxies: ["DIRECT", "🚀 区域代理"]

  - name: 🚀 香港节点
    type: select
    proxies: {{ getClashNodeNames(nodeList, hkFilter) | json }}

  - name: 🚀 美国节点
    type: select
    proxies: {{ getClashNodeNames(nodeList, usFilter) | json }}

  - name: 🚀 日本节点
    type: select
    proxies: {{ getClashNodeNames(nodeList, japanFilter) | json }}

  - name: 🚀 备用节点
    type: select
    proxies: {{ getClashNodeNames(nodeList) | json }}
    url: {{ proxyTestUrl }}
    interval: 60

rule-providers:
  direct-private:
    type: http
    behavior: classical
    url: https://pagure.io/rules/raw/master/f/direct.txt
    path: ./ruleset/direct-private.txt
    format: text
    interval: 3600
  reject-private:
    type: http
    behavior: classical
    url: https://pagure.io/rules/raw/master/f/reject.txt
    path: ./ruleset/reject-private.txt
    format: text
    interval: 3600
  proxy-private:
    type: http
    behavior: classical
    url: https://pagure.io/rules/raw/master/f/proxy.txt
    path: ./ruleset/proxy-private.txt
    format: text
    interval: 3600
  telegramcidr:
    type: http
    behavior: classical
    url: https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/telegramcidr.txt
    path: ./ruleset/telegramcidr.txt
    format: text
    interval: 3600
  direct:
    type: http
    behavior: domain
    url: https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/direct.txt
    path: ./ruleset/direct.txt
    format: text
    interval: 3600
  reject:
    type: http
    behavior: domain
    url: https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/reject.txt
    path: ./ruleset/reject.txt
    format: text
    interval: 3600
  proxy:
    type: http
    behavior: domain
    url: https://ghproxy.com/raw.githubusercontent.com/Loyalsoldier/surge-rules/release/proxy.txt
    path: ./ruleset/proxy.txt
    format: text
    interval: 3600

rules:
  - RULE-SET,direct-private,DIRECT
  - RULE-SET,reject-private,REJECT
  - RULE-SET,proxy-private,🚀 区域代理
  - RULE-SET,telegramcidr,🚀 区域代理,no-resolve
  - RULE-SET,direct,DIRECT
  - RULE-SET,reject,REJECT
  - RULE-SET,proxy,🚀 区域代理
  - GEOIP,CN,DIRECT
  - MATCH,🐟 其余策略
