FROM ghcr.io/void-linux/void-glibc

RUN \
	xbps-install -Syu xbps && \
	xbps-install -Syu python3-pip && \
	pip install git+https://github.com/JaidedAI/EasyOCR && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/bin/easyocr"]

