#!/bin/sh

sysrc -f /etc/rc.conf bitcoind_enable="YES"

echo txindex=1 >>  /usr/local/etc/bitcoin.conf
echo disablewallet=1 >> /usr/local/etc/bitcoin.conf

service bitcoind start

echo ""
echo ""
echo "bitcoin has hundreds of config options and there isn't a single mode of"
echo "operation (mining, client, testnet etc)  that can be easily covered by a"
echo "sample file."
echo ""
echo "A generator for some common configurations exists at"
echo "https://jlopp.github.io/bitcoin-core-config-generator/"
echo ""
echo "The Current Database can be found at /var/db/bitcoin"
echo ""
echo ""
