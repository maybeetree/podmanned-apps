#!/bin/sh

podman run --rm -ti \
	-v "$PWD:/pwd" \
	-v maybetree-github-cli-homedir:/root \
	maybetree-github-cli \
	"$@"

