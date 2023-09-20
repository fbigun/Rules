# {{ downloadUrl }}

external-controller: 127.0.0.1:9090
port: 7890
socks-port: 7891
redir-port: 7892

{%- if customParams.dns !== false %}
dns:
  enable: true
  nameserver:
    - https://223.5.5.5/dns-query
  fallback:  # IP addresses who is outside CN in GEOIP will fallback here
    - https://223.6.6.6/dns-query
    - https://rubyfish.cn/dns-query
  fallback-filter:
    geoip: true  # Enable GEOIP-based fallback
    ipcidr:
      - 240.0.0.0/4
{%- endif %}

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
  type: url-test
  proxies: {{ getClashNodeNames(nodeList) | json }}
  url: {{ proxyTestUrl }}
  interval: 60

rule-providers:
  LocalAreaNetwork:
    type: http
    behavior: classical
    url: https://gitee.com/srcbk/rules/raw/master/Clash/Providers/LocalAreaNetwork.yaml
    path: ./ruleset/LocalAreaNetwork.yaml
    interval: 86400

  proxy:
    type: http
    behavior: classical
    url: https://gitee.com/srcbk/rules/raw/master/oneself/Providers/proxy.yaml
    path: ./ruleset/proxy.yaml
    interval: 86400

  direct:
    type: http
    behavior: classical
    url: https://gitee.com/srcbk/rules/raw/master/oneself/Providers/direct.yaml
    path: ./ruleset/direct.yaml
    interval: 86400

  reject:
    type: http
    behavior: classical
    url: https://gitee.com/srcbk/rules/raw/master/oneself/Providers/reject.yaml
    path: ./ruleset/reject.yaml
    interval: 86400

  UnBan:
    type: http
    behavior: classical
    url: https://gitee.com/srcbk/rules/raw/master/Clash/Providers/UnBan.yaml
    path: ./ruleset/UnBan.yaml
    interval: 86400

  BanAD:
    type: http
    behavior: classical
    url: https://gitee.com/srcbk/rules/raw/master/Clash/Providers/BanAD.yaml
    path: ./ruleset/BanAD.yaml
    interval: 86400

  BanProgramAD:
    type: http
    behavior: classical
    url: https://gitee.com/srcbk/rules/raw/master/Clash/Providers/BanProgramAD.yaml
    path: ./ruleset/BanProgramAD.yaml
    interval: 86400

  GoogleFCM:
    type: http
    behavior: classical
    url: https://gitee.com/srcbk/rules/raw/master/Clash/Providers/Ruleset/GoogleFCM.yaml
    path: ./ruleset/GoogleFCM.yaml
    interval: 86400

  GoogleCN:
    type: http
    behavior: classical
    url: https://gitee.com/srcbk/rules/raw/master/Clash/Providers/Ruleset/GoogleCN.yaml
    path: ./ruleset/GoogleCN.yaml
    interval: 86400

  GoogleCNProxyIP:
    type: http
    behavior: classical
    url: https://gitee.com/srcbk/rules/raw/master/oneself/Providers/GoogleCNProxyIP.yaml
    path: ./ruleset/GoogleCNProxyIP.yaml
    interval: 86400

  Telegram:
    type: http
    behavior: classical
    url: https://gitee.com/srcbk/rules/raw/master/Clash/Providers/Ruleset/Telegram.yaml
    path: ./ruleset/Telegram.yaml
    interval: 86400

  ProxyMedia:
    type: http
    behavior: classical
    url: https://gitee.com/srcbk/rules/raw/master/Clash/Providers/ProxyMedia.yaml
    path: ./ruleset/ProxyMedia.yaml
    interval: 86400

  ProxyLite:
    type: http
    behavior: classical
    url: https://gitee.com/srcbk/rules/raw/master/Clash/Providers/ProxyLite.yaml
    path: ./ruleset/ProxyLite.yaml
    interval: 86400

  ChinaDomain:
    type: http
    behavior: classical
    url: https://gitee.com/srcbk/rules/raw/master/Clash/Providers/ChinaDomain.yaml
    path: ./ruleset/ChinaDomain.yaml
    interval: 86400

rules:
  - RULE-SET,LocalAreaNetwork,DIRECT,no-resolve
  - RULE-SET,proxy,🚀 区域代理,no-resolve
  - RULE-SET,direct,DIRECT,no-resolve
  - RULE-SET,reject,REJECT,no-resolve
  - RULE-SET,UnBan,DIRECT,no-resolve
  - RULE-SET,BanAD,REJECT,no-resolve
  - RULE-SET,BanProgramAD,REJECT,no-resolve
  - RULE-SET,GoogleFCM,DIRECT,no-resolve
  - RULE-SET,GoogleCN,DIRECT,no-resolve
  - RULE-SET,GoogleCNProxyIP,DIRECT,no-resolve
  - RULE-SET,Telegram,🚀 区域代理,no-resolve
  - RULE-SET,ProxyMedia,🚀 区域代理,no-resolve
  - RULE-SET,ProxyLite,🚀 区域代理,no-resolve
  - RULE-SET,ChinaDomain,DIRECT,no-resolve
  - GEOIP,CN,DIRECT,no-resolve
  - MATCH,🐟 其余策略
