#!/bin/sh

exec podman run -v "$PWD:/pwd" --rm maybetree-typst "$@"

