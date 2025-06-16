#!/bin/sh

podman run -v "$PWD:/pwd" --rm -ti maybetree-pypi -m "$@"

