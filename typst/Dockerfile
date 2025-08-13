FROM alpine:latest

WORKDIR /app

RUN \
	apk add --no-cache \
		font-noto-emoji \
		fontconfig \
		&& \
	apk add --no-cache \
		-X http://mirror.fcix.net/alpine/edge/community \
		typst && \
	:

WORKDIR /pwd

ENTRYPOINT ["/app/run.sh"]
#ENTRYPOINT ["/usr/bin/typst"]

