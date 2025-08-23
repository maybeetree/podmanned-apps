#!/bin/sh

here="$(dirname "$(realpath "$0")")"

podman run \
	--rm \
	-it \
	-p 3923:3923 \
	-v "$PWD:/w" \
	-v "$here/cfg:/cfg" \
	copyparty/ac
