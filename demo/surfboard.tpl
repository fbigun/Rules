#!MANAGED-CONFIG {{ downloadUrl }} interval=43200 strict=true
# https://getsurfboard.com/docs/profile-format/overview

[General]
dns-server = 119.29.29.29, 223.5.5.5, 9.9.9.9:9953, system
doh-server = https://9.9.9.9/dns-query
skip-proxy = 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, localhost, *.local
proxy-test-url = http://www.gstatic.com/generate_204, interval=300, tolerance=100
internet-test-url = http://www.gstatic.cn/generate_204
always-real-ip = *.srv.nintendo.net, *.stun.playstation.net, xbox.*.microsoft.com, *.xboxlive.com, stun.l.google.com
udp-policy-not-supported-behaviour = DIRECT

[Proxy]
{{ getSurgeNodes(nodeList) }}

[Proxy Group]
🚀 香港节点 = select, DIRECT, {{ getNodeNames(nodeList, hkFilter) }}
🚀 美国节点 = select, DIRECT, {{ getNodeNames(nodeList, usFilter) }}
🚀 日本节点 = select, DIRECT, {{ getNodeNames(nodeList, japanFilter) }}
🚀 备用节点 = select, DIRECT, {{ getNodeNames(nodeList) }}
🚀 区域代理 = select, DIRECT, 🚀 香港节点, 🚀 美国节点, 🚀 日本节点, 🚀 备用节点
🐟 其余策略 = select, DIRECT, 🚀 区域代理

[Rule]
RULE-SET,https://gitee.com/srcbk/rules/raw/master/oneself/direct.list,DIRECT
RULE-SET,https://gitee.com/srcbk/rules/raw/master/oneself/reject.list,REJECT
RULE-SET,https://gitee.com/srcbk/rules/raw/master/oneself/proxy.list,🚀 区域代理,force-remote-dns
RULE-SET,https://gitee.com/srcbk/rules/raw/master/Clash/LocalAreaNetwork.list,DIRECT
DOMAIN-SET,https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/icloud.txt,DIRECT
DOMAIN-SET,https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/apple.txt,DIRECT
DOMAIN-SET,https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/google.txt,DIRECT
RULE-SET,https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/telegramcidr.txt,🚀 区域代理,force-remote-dns
DOMAIN-SET,https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/private.txt,DIRECT
DOMAIN-SET,https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/direct.txt,DIRECT
DOMAIN-SET,https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/reject.txt,REJECT
DOMAIN-SET,https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/proxy.txt,🚀 区域代理
RULE-SET,https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/cncidr.txt,DIRECT
FINAL,🐟 其余策略,dns-failed
