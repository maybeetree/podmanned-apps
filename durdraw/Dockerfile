FROM alpine:latest

WORKDIR /app

RUN \
	apk add --no-cache git python3 && \
	python -m venv venv && \
	. venv/bin/activate && \
	git clone https://github.com/cmang/durdraw.git && \
	cd durdraw && \
	pip install -e . && \
	./installconf.sh && \
	:

WORKDIR /pwd

ENTRYPOINT ["/app/venv/bin/durdraw"]

