# vpn-setup

This repo contains the scripts and docker configuration required to replicate my personal VPN servers. This includes:

 - Custom DNS
 - VPN
 - Monitoring
 - Nat punching tools
 - Reverse proxy

## Installation

```sh
./scripts/openvpn-init.sh
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
sudo docker-compose up --detach
```
