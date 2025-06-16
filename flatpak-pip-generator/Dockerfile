FROM alpine:latest

WORKDIR /app

RUN \
	apk add --no-cache python3 && \
	python -m venv venv && \
	venv/bin/pip install requirements-parser && \
	wget https://raw.githubusercontent.com/flatpak/flatpak-builder-tools/refs/heads/master/pip/flatpak-pip-generator && \
	chmod +x flatpak-pip-generator && \
	(echo '#!/venv/bin/python' ; cat flatpak-pip-generator) > flatpak-pip-generator && \
	ln -s /app/flatpak-pip-generator /usr/local/bin/flatpak-pip-generator && \
	:

WORKDIR /pwd

ENTRYPOINT ["/usr/local/bin/flatpak-pip-generator"]

