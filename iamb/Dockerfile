FROM ghcr.io/void-linux/void-glibc

RUN \
	xbps-install -Syu xbps && \
	xbps-install -Syu iamb && \
	:

WORKDIR /root

ENTRYPOINT ["/usr/bin/iamb"]

