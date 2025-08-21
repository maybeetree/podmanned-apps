#!/bin/sh

if command -v doas > /dev/null
then
	alias sudo=doas
elif command -v sudo > /dev/null
then
	alias doas=sudo
else
	echo "Neither sudo no doas found" > /dev/stderr
fi

wget https://raw.githubusercontent.com/Nitrokey/nitrokey-udev-rules/main/41-nitrokey.rules
sudo mkdir -p /etc/udev/rules.d
sudo mv ./41-nitrokey.rules /etc/udev/rules.d/
sudo chown root:root /etc/udev/rules.d/41-nitrokey.rules
sudo chmod 644 /etc/udev/rules.d/41-nitrokey.rules
sudo udevadm control --reload-rules && sudo udevadm trigger

