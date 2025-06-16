#!/bin/sh

(
	cd "$(dirname "$(realpath "$0")")"

	podman run \
		--rm \
		-ti \
		-v ./app:/app:ro \
		-v ./dep:/dep:ro \
		-v maybetree-submachine-legacy-homedir:/root \
		\
		--device /dev/dri \
		\
		`# Forward xorg ` \
		--net=host \
		-e DISPLAY \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-v ~/.Xauthority:/root/.Xauthority:Z \
		\
		`# Forward sound ` \
		-e XDG_RUNTIME_DIR \
		--device /dev/snd \
		-v "$XDG_RUNTIME_DIR/pipewire-0":"$XDG_RUNTIME_DIR/pipewire-0" \
		-v "$XDG_RUNTIME_DIR/pulse":"$XDG_RUNTIME_DIR/pulse" \
		\
		maybetree-submachine-legacy "$@"

)

