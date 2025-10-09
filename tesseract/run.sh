#!/bin/sh

podman run \
	-v "$PWD":/pwd \
	--rm \
	--read-only \
	--init \
	--net none \
	maybetree-tesseract "$@"

