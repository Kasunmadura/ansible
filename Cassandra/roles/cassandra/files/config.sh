#!/bin/bash
sed -i.bak "s/^\(listen_address: \).*/\1$(ifconfig  eth0 | awk '/inet addr/{print substr($2,6)}')/" /etc/cassandra/cassandra.yaml
sed -i.bak "s/^\(rpc_address: \).*/\1$(ifconfig  eth0 | awk '/inet addr/{print substr($2,6)}')/" /etc/cassandra/cassandra.yaml
