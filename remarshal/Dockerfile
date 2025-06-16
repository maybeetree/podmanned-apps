FROM alpine:latest

WORKDIR /app

RUN \
	apk add --no-cache python3 && \
	python -m venv venv && \
	venv/bin/pip install remarshal && \
	ln -s /app/venv/bin/remarshal /usr/local/bin/remarshal && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/local/bin/remarshal"]

