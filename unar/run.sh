#!/bin/sh

podman run \
	-v "$PWD:/pwd" \
	--net=none \
	--rm \
	maybetree-unar "$@"

