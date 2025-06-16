FROM alpine:latest
COPY ./rootfs /
RUN apk add --no-cache python3
WORKDIR /pwd
ENTRYPOINT ["/usr/local/bin/python"]

