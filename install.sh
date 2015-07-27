#!/bin/bash

apt-get update
apt-get install -y git make curl
curl -sSL https://get.docker.io/ubuntu/ | sh

mkdir /tmp/shipment
cd /tmp/shipment
curl -L# https://github.com/firstandthird/shipment/archive/master.tar.gz | tar zx --strip 1
make install
rm -rf /tmp/shipment
