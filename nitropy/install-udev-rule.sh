#!/bin/sh

wget https://raw.githubusercontent.com/Nitrokey/nitrokey-udev-rules/main/41-nitrokey.rules
sudo mkdir -p /etc/udev/rules.d
sudo mv ./41-nitrokey.rules /etc/udev/rules.d/
sudo chown root:root /etc/udev/rules.d/41-nitrokey.rules
sudo chmod 644 /etc/udev/rules.d/41-nitrokey.rules
sudo udevadm control --reload-rules && sudo udevadm trigger

