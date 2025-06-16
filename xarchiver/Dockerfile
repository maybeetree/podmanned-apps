FROM ghcr.io/void-linux/void-glibc

RUN \
	xbps-install -Syu xarchiver && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/bin/xarchiver"]

