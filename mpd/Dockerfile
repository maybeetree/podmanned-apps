FROM ghcr.io/void-linux/void-glibc

RUN \
	xbps-install -Syu xbps && \
	xbps-install -Syu mpd && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/bin/mpd", "--no-daemon"]

