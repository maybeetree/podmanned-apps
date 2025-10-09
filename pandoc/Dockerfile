FROM ghcr.io/void-linux/void-glibc

RUN \
	xbps-install -Syu xbps && \
	xbps-install -Syu pandoc && \
	:

WORKDIR /root

ENTRYPOINT ["/usr/bin/pandoc"]

