FROM ghcr.io/void-linux/void-glibc

RUN \
	xbps-install -Syu xbps && \
	xbps-install -Syu shntool flac && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/bin/shnsplit"]

