FROM alpine:latest

WORKDIR /app

RUN \
	apk add --no-cache go git && \
	go install github.com/blampe/goat/cmd/goat@latest && \
	:

WORKDIR /pwd

ENTRYPOINT ["/root/go/bin/goat"]

