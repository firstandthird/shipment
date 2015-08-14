#!/bin/bash

mkdir /tmp/shipment
cd /tmp/shipment
curl -L# https://github.com/firstandthird/shipment/archive/master.tar.gz | tar zx --strip 1
make install
rm -rf /tmp/shipment
