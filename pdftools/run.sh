#!/bin/sh

podman run --init -v "$PWD:/pwd" --rm maybetree-pdftools "$0" "$@"

