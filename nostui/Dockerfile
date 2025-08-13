FROM ghcr.io/void-linux/void-glibc

RUN \
	xbps-install -Syu cargo && \
	cargo install nostui && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/bin/bitmap"]

