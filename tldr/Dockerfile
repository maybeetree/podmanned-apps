FROM alpine:latest

WORKDIR /app

RUN \
	apk add --no-cache python3 && \
	python -m venv venv && \
	venv/bin/pip install tldr && \
	ln -s /app/venv/bin/tldr /usr/local/bin/tldr && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/local/bin/tldr"]

