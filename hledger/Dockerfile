FROM ghcr.io/void-linux/void-glibc

RUN \
	xbps-install -Syu xbps && \
	xbps-install -Syu \
		ncurses-base `# Needed for terminfo` \
		hledger \
		&& \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/bin/hledger"]

