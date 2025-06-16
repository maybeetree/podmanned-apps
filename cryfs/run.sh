#!/bin/sh

podman run \
	--rm -ti \
	-v "$PWD:/pwd:rw,z,shared" \
	--device /dev/fuse \
	--cap-add SYS_ADMIN \
	maybetree-cryfs --foreground --create-missing-basedir --create-missing-mountpoint -o noatime,nodiratime,allow_other "$@"

