#!/bin/bash
set -eux

hostnamectl set-hostname k3s-control-plane

apt-get update -y
apt-get install -y curl

curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server \
  --disable traefik \
  --write-kubeconfig-mode 644 \
  --node-taint node-role.kubernetes.io/control-plane=true:NoSchedule" \
  K3S_TOKEN="${k3s_token}" sh -