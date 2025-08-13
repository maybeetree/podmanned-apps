FROM ghcr.io/void-linux/void-glibc

RUN \
	xbps-install -Syu xbps && \
	xbps-install -Syu zstd libzstd mkvtoolnix ffmpeg python3-pip && \
	pip install yt-dlp gallery-dl && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/bin/gallery-dl"]

