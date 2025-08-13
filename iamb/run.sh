#!/bin/sh

mkdir -p ~/.config/iamb

podman run \
	-v maybetree-github-cli-homedir:/root \
	-v ~/.config/iamb:/root/.config/iamb \
	--rm \
	-ti \
	maybetree-iamb "$@"

