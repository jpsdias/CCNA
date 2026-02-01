#!/bin/bash
# Add static routes to 172.20.0.0/16 and 10.0.0.0/28 via 192.168.1.100

# Exit on any error
set -e

GATEWAY="192.168.1.100"

echo "Adding routes via $GATEWAY..."

# Add routes
sudo route -n add -net 172.20.0.0/16 $GATEWAY
sudo route -n add -net 10.0.0.0/27 $GATEWAY

#echo "Routes successfully added:"
#ip route | grep "$GATEWAY"
