#!/bin/sh

podman run \
	-v "$PWD":/pwd \
	-v 'maybtree-yt-dlp-homedir:/root' \
	--rm \
	--read-only \
	--init \
	maybetree-yt-dlp "$@"

