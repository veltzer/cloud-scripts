#!/bin/bash -e
# get ridd of the ubuntu "pro" commericals
sudo rm -f /etc/apt/apt.conf.d/20apt-esm-hook.conf
sudo touch /etc/apt/apt.conf.d/20apt-esm-hook.conf
# sudo pro config set apt_news=false
# update and upgrade everything
sudo apt update
sudo apt dist-upgrade -y
sudo apt upgrade -y
