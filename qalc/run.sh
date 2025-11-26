#!/bin/sh

podman run \
	--init \
	--rm \
	-ti \
	-v maybetree-qalc-homedir:/root \
	maybetree-qalc "$@"

