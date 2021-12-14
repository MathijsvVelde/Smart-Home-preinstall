#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]
  then echo "Not root! Running as root"
	sudo $0
  exit
fi

apt-get update
apt-get --yes --no-install-recommends install git openssh-client

ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N ""
cat ~/.ssh/id_rsa
nano ~/.ssh/authorized_keys
touch ~/.ssh/known_hosts
