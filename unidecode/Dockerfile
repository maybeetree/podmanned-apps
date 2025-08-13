FROM ghcr.io/void-linux/void-glibc

RUN \
	xbps-install -Syu python3-Unidecode && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/bin/unidecode"]

