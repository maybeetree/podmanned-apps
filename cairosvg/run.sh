#!/bin/sh

podman run -v "$PWD:/pwd" --rm maybetree-cairosvg "$@"

