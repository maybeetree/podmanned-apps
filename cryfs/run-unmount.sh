#!/bin/sh

podman run \
	--rm -ti \
	-v "$PWD:/pwd:rw,z,shared" \
	--device /dev/fuse \
	--cap-add SYS_ADMIN \
	--entrypoint /usr/bin/cryfs-unmount \
	maybetree-cryfs "$@"

