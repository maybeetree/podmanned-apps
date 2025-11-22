FROM alpine:latest

WORKDIR /app

RUN \
	apk add --no-cache minio-client && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/bin/mcli"]

