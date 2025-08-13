FROM ghcr.io/void-linux/void-glibc

RUN \
	xbps-install -Syu xbps && \
	xbps-install -Syu ffmpeg python3-pip && \
	pip install yt-dlp && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/bin/yt-dlp"]

