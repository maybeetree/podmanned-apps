#!/bin/sh

podman run -v .:/pwd:ro -ti --rm maybetree-flatpak-pip-generator "$@"

