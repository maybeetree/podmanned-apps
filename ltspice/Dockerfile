FROM alpine:latest

RUN \
	apk add --no-cache \
		wine \
		\
		musl-locales ` # maybe needed?? idk ` \
		&& \
	:

WORKDIR /app
CMD ["/app/run.sh"]


