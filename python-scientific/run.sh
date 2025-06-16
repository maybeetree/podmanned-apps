#!/bin/sh

podman run -ti -v "$PWD:/pwd:rw" -v homedir:/root --rm maybetree-python-scientific "$@"


