#!/bin/sh


podman run \
	-ti \
	--mount type=bind,src="$PWD",dst=/pwd,rw \
	-v maybetree-mcli-homedir:/root \
	--rm \
	maybetree-mcli \
	"$@"

