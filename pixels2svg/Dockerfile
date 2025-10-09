FROM alpine:latest

WORKDIR /app

RUN \
	apk add --no-cache python3 g++ python3-dev && \
	python -m venv venv && \
	venv/bin/pip install pixels2svg && \
	ln -s /app/venv/bin/pixels2svg /usr/local/bin/pixels2svg && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/local/bin/pixels2svg"]

