#!/bin/sh

podman run \
	-v "$PWD:/pwd" \
	-e DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v ~/.Xauthority:/root/.Xauthority:Z \
	-v homedir:/root \
	--device /dev/dri \
	--net=host \
	--rm \
	maybetree-flashpoint "$@"

