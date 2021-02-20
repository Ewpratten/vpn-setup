#! /bin/bash

set -e

# Configure the server
docker-compose run --rm openvpn ovpn_genconfig -c -n 159.89.122.178 -u tcp://vpn.retrylife.ca:80
docker-compose run --rm openvpn ovpn_initpki

# Fix ownership rules
sudo chown -R $(whoami): ./config/openvpn/data