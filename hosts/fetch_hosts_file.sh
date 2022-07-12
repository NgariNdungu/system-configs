#!/usr/bin/env sh

# adapted from; https://privacyinternational.org/guide-step/4340/linux-setup-dns-level-ad-blocking
# https://github.com/StevenBlack/hosts

set -e

curl -OL 'https://raw.githubusercontent.com/StevenBlack/hosts/master/data/StevenBlack/hosts'

if (grep -E '^(\s*)[1-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\s*.*\..*' hosts); then
  echo 'Potential malicious entry in hosts file. DO NOT USE!'
  exit 1
fi

echo 'Concatenate downloaded file to your /etc/hosts to finish setup'
# cat hosts >> /etc/hosts
