#!/bin/sh

podman run --entrypoint /app/venv/bin/python -v "$PWD:/pwd" --rm maybetree-pixels2svg "$@"

