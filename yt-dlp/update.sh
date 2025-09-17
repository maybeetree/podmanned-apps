#!/bin/sh

podman run \
	--replace \
	--name maybetree-yt-dlp \
	--entrypoint /bin/pip \
	maybetree-yt-dlp \
	install --upgrade yt-dlp \
	|| exit 1

podman commit maybetree-yt-dlp maybetree-yt-dlp \
	--change='ENTRYPOINT ["/usr/bin/yt-dlp"]' \

