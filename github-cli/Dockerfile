FROM alpine:latest

WORKDIR /app

RUN \
	apk add --no-cache github-cli && \
	:

WORKDIR /pwd
ENV EDITOR vi

ENTRYPOINT ["/usr/bin/gh"]

