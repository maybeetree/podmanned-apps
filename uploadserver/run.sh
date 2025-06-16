#!/bin/sh

echo
echo ADDRESSES:
echo
ip -o -4 addr show | awk '{print $2, $4}'
echo

podman run -ti -p 8000:8000 --mount type=bind,src="$PWD",dst=/pwd,rw --rm maybetree-uploadserver -m uploadserver "$@"

