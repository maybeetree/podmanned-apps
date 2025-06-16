FROM alpine:latest

WORKDIR /app

RUN \
	apk add --no-cache python3 cairo && \
	python -m venv venv && \
	venv/bin/pip install cairosvg && \
	ln -s /app/venv/bin/cairosvg /usr/local/bin/cairosvg && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/local/bin/cairosvg"]

