#!/bin/sh

podman run \
	-v "$PWD":/pwd \
	-v 'maybtree-gallery-dl-homedir:/root' \
	--rm \
	--read-only \
	--init \
	maybetree-gallery-dl "$@"

