#!/bin/sh

podman run \
	--rm \
	-v maybetree-nostui-homedir:/root \
	maybetree-nostui \
	"$@"

