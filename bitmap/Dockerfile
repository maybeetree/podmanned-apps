FROM ghcr.io/void-linux/void-glibc

RUN \
	xbps-install -Syu bitmap && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/bin/bitmap"]

