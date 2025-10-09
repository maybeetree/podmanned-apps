FROM ghcr.io/void-linux/void-glibc

RUN \
	xbps-install -Syu xbps && \
	xbps-install -Syu tesseract-ocr tesseract-ocr-jpn && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/bin/tesseract-ocr"]

