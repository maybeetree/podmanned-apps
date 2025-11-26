#!/bin/sh

podman run \
	--userns=keep-id \
	--net none \
	--init \
	-v "$PWD:/pwd" \
	--rm \
	maybetree-pdftools "$0" "$@"

