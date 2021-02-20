#! /bin/bash

set -e

# Generate user
docker-compose run --rm openvpn easyrsa build-client-full $1

# Fetch config
docker-compose run --rm openvpn ovpn_getclient $1 > $1.ovpn