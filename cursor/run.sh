#!/bin/sh

oldpwd="$(pwd)"

(
	cd "$(dirname "$(realpath "$0")")"

	podman run \
		--userns=keep-id \
		--rm \
		-ti \
		-v ./app:/app:ro \
		-v ./dep:/dep:ro \
		--mount type=bind,src="$oldpwd",dst=/pwd,rw \
		-v maybetree-cursor-homedir:/home/maybetree \
		\
		--device /dev/dri \
		\
		`# Forward xorg ` \
		--net=host \
		-e DISPLAY \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-v ~/.Xauthority:/home/$(whoami)/.Xauthority:Z \
		\
		-e XDG_RUNTIME_DIR \
		-v maybetree-cursor-runtime-dir:$XDG_RUNTIME_DIR \
		-e ESCAPEHATCH \
		-e _JAVA_AWT_WM_NONREPARENTING \
		maybetree-cursor "$@"

)

