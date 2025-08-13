#!/bin/sh

podman run \
	-v "$PWD:/pwd" \
	-i \
	--rm \
	maybetree-unidecode "$@"

