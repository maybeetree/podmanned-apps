FROM alpine:latest

WORKDIR /app
RUN apk add --no-cache python3 && \
	python -m venv venv && \
	venv/bin/pip install pynitrokey

# Stop nitropy from complaining about being run as root
ENV ALLOW_ROOT=1

ENTRYPOINT ["/app/venv/bin/nitropy"]


