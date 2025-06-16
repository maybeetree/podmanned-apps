FROM alpine:latest

WORKDIR /app

RUN \
	apk add --no-cache python3 && \
	python -m venv venv && \
	venv/bin/pip install uploadserver && \
	:

WORKDIR /pwd

ENTRYPOINT ["/app/venv/bin/python"]

