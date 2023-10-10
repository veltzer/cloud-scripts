#!/bin/bash -e
# get ridd of the ubuntu "pro" commericals
sudo rm -f /etc/apt/apt.conf.d/20apt-esm-hook.conf
sudo touch /etc/apt/apt.conf.d/20apt-esm-hook.conf
# update and upgrade everything
sudo apt update
sudo apt dist-upgrade -y
sudo apt upgrade -y
