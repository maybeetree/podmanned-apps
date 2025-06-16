#!/bin/sh

podman run -v .:/pwd -ti --rm maybetree-durdraw "$@"

