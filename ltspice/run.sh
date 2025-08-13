#!/bin/sh

oldpwd="$PWD"

(
	cd "$(dirname "$(realpath "$0")")"

	podman run \
		--init \
		--rm \
		-ti \
		-v ./app:/app:ro \
		-v ./dep:/dep:rw \
		-v maybetree-ltspice-homedir:/root \
		\
		`# Forward xorg ` \
		--net=host \
		-e DISPLAY \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-v ~/.Xauthority:/root/.Xauthority:Z \
		\
		-v "$oldpwd:/pwd" \
		\
		maybetree-ltspice "$@"

)

