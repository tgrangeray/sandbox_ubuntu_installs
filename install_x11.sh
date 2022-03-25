#!/bin/bash

sudo apt install x11-apps -y
# x11
cat >>~/.profile <<x
export DISPLAY="$(grep nameserver /etc/resolv.conf | sed 's/nameserver //'):0"
x
source ~/.profile
