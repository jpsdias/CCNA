#!/bin/bash
# Add static routes to 172.20.0.0/16 and 10.0.0.0/28 via 192.168.1.100

# Exit on any error
set -e

GATEWAY="192.168.64.34"

echo "Adding routes via $GATEWAY..."

# Add routes
sudo ip route add 172.20.0.0/16 via $GATEWAY
sudo ip route add 10.0.0.0/27 via $GATEWAY

echo "Routes successfully added:"
ip route | grep "$GATEWAY"
