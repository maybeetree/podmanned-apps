FROM ghcr.io/void-linux/void-glibc

RUN \
	xbps-install -Syu xbps && \
	xbps-install -Syu qalculate && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/bin/qalc"]

