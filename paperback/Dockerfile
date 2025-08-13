FROM alpine:latest

RUN \
	apk add --no-cache \
		wine \
		\
		musl-locales ` # maybe needed?? idk ` \
		unzip \
		&&
	apk add -X https://dl-cdn.alpinelinux.org/alpine/edge/testing \
		cups-pdf \
		&&
	mkdir ~/PDF \
		&&
	:

WORKDIR /app
CMD ["/app/run.sh"]


