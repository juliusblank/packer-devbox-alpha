#!/bin/bash

# Taken from http://www.sysdig.org/install/ on 20151116

# 1. Trust the Draios GPG key, configure the apt repository, and update the package list
curl -s https://s3.amazonaws.com/download.draios.com/DRAIOS-GPG-KEY.public | apt-key add -
curl -s -o /etc/apt/sources.list.d/draios.list http://download.draios.com/stable/deb/draios.list
apt-get update

# 2. Install kernel headers
apt-get -y install linux-headers-$(uname -r)

# 3. Install sysdig
apt-get -y install sysdig
