#!/bin/bash
set -eux

hostnamectl set-hostname ${worker_hostname}

apt-get update -y
apt-get install -y curl

curl -sfL https://get.k3s.io | \
  K3S_URL="https://${k3s_server_ip}:6443" \
  K3S_TOKEN="${k3s_token}" \
  sh -