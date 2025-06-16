FROM ghcr.io/void-linux/void-glibc

RUN \
	xbps-install -Syu cryfs && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/bin/cryfs"]

