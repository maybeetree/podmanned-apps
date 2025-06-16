#!/bin/sh

exec podman run -ti -v "$PWD:/pwd" --rm maybetree-gambit "$@"

