#! /bin/bash

set -e

docker-compose run --rm openvpn ovpn_revokeclient $1 remove