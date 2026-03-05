#!/bin/bash
# Add static routes to 172.20.0.0/16 and 10.0.0.0/28 via 192.168.1.100

# Exit on any error
set -e

GATEWAY="172.16.201.201"

echo "Adding routes via $GATEWAY..."

# Add routes
sudo route -n delete -net 172.20.0.0/16 $GATEWAY
sudo route -n delete -net 10.0.0.0/27 $GATEWAY

#echo "Routes successfully added:"
#ip route | grep "$GATEWAY"
