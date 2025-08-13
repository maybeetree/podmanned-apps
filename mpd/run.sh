#!/bin/sh

mkdir -p ~/.config/mpd

podman run \
	--rm \
	\
	`# Forward sound ` \
	-e XDG_RUNTIME_DIR \
	--device /dev/snd \
	-v "$XDG_RUNTIME_DIR/pipewire-0":"$XDG_RUNTIME_DIR/pipewire-0" \
	-v "$XDG_RUNTIME_DIR/pulse":"$XDG_RUNTIME_DIR/pulse" \
	\
	-v ~/.config/mpd:/root/.config/mpd \
	-v ~/Music:/root/Music \
	\
	-v maybetree-mpd-homedir:/root \
	\
	--expose 6600 \
	--entrypoint /bin/sh \
	-ti \
	\
	maybetree-mpd "$@"

