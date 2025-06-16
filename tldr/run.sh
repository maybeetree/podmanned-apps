#!/bin/sh

podman run -v "maybetree-tldr-homedir:/root" -ti --rm maybetree-tldr "$@"

