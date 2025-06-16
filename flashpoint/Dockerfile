FROM ghcr.io/void-linux/void-glibc

ENV WINEARCH=win32

RUN \
	xbps-install -Syu \
		7zip \
		wget \
		samba `#?????` \
		zenity \
		winetricks \
		void-repo-multilib && \
	xbps-install -Syu wine-32bit && \
	wget https://download.flashpointarchive.org/upload/fp14static.7z && \
	mkdir extracted && \
	7z x fp14static.7z -oextracted && \

	:

WORKDIR /pwd

ENTRYPOINT ["/usr/bin/bitmap"]

