#!/bin/sh

# No `-ti` to keep stdout and stderr separate


find_nitrokey() {
	for dev in /dev/hidraw*
	do
		udevadm info --query=all $dev | grep ID_SECURITY_TOKEN=1 > /dev/null 2>&1
		if [ "$?" = 0 ]
		then
			echo $dev
			return
		fi
	done
	echo "No nitrokey!!" > /dev/stderr
	exit 1
}

key=$(find_nitrokey)

if [ -z "$key" ]
then
	echo "Nitrokey not found!!" > /dev/stderr
	exit 1
fi

podman run \
	--rm \
	--device "$key" \
	maybetree-nitropy "$@"


