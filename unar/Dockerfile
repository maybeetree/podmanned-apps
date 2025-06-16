FROM ghcr.io/void-linux/void-glibc

RUN \
	xbps-install -Syu unar && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/bin/unar"]

