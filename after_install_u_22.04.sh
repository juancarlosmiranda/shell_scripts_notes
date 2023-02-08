#!/bin/bash
set -e


# Remove old packages and make cleaning of the system.
sudo apt-get update
sudo apt-get autoremove
sudo apt-get autoclean

# Install network tools (08/02/20239)
sudo apt-get install net-tools
sudo apt-get install openssh-server
sudo systemctl enable ssh --now
sudo systemctl start ssh
sudo apt-get install wireshark-qt
sudo apt-get hping3
sudo apt-get fping

# Install common apps
sudo apt-get install mlocate
sudo apt-get install locate
sudo apt -y install curl
sudo apt -y install git
sudo apt-get install ffmpeg
sudo apt-get dialog

# Install essential tools that are not part of package.
sudo apt-get install -y build-essential
sudo apt-get install cmake
sudo apt-get install libgtk2.0-dev
sudo apt-get install libusb-1.0
sudo apt install -y libssl-dev
sudo apt install -y libffi-dev


# Python environments
sudo apt install -y python3-dev
sudo apt install -y python3-pip
sudo apt-get install python-tk