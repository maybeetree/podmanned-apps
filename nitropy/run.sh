#!/bin/sh

# No `-ti` to keep stdout and stderr separate
podman run \
	--rm \
	--device /dev/hidraw0 `#FIXME might not be 0` \
	maybetree-nitropy "$@"


