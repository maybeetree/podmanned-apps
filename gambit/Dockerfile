FROM alpine:latest

WORKDIR /app

RUN \
	apk add --no-cache \
		-X http://mirror.fcix.net/alpine/edge/testing \
		gambit && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/bin/scheme-ieee-1178-1990"]

