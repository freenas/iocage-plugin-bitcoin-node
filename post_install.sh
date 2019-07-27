#!/bin/sh

sysrc -f /etc/rc.conf bitcoind_enable="YES"

echo txindex=1 >>  /usr/local/etc/bitcoin.conf
echo disablewallet=1 >> /usr/local/etc/bitcoin.conf

service bitcoind start

echo "" > /root/PLUGIN_INFO
echo "" >> /root/PLUGIN_INFO
echo "bitcoin has hundreds of config options and there isn't a single mode of"  >> /root/PLUGIN_INFO
echo "operation (mining, client, testnet etc)  that can be easily covered by a"  >> /root/PLUGIN_INFO
echo "sample file."  >> /root/PLUGIN_INFO
echo ""  >> /root/PLUGIN_INFO
echo "A generator for some common configurations exists at"  >> /root/PLUGIN_INFO
echo "https://jlopp.github.io/bitcoin-core-config-generator/"  >> /root/PLUGIN_INFO
echo ""  >> /root/PLUGIN_INFO 
echo "The Current Database can be found at /var/db/bitcoin"  >> /root/PLUGIN_INFO
echo ""  >> /root/PLUGIN_INFO
echo ""  >> /root/PLUGIN_INFO
