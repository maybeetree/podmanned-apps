#!/bin/sh

exec podman run -v "$PWD:/pwd" --rm -i maybetree-goat "$@"

