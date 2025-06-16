FROM ghcr.io/void-linux/void-glibc
RUN xbps-install -Syu glib
RUN xbps-install -Syu nss
RUN xbps-install -Syu dbus
RUN xbps-install -Syu atk
RUN xbps-install -Syu at-spi2-atk
RUN xbps-install -Syu libcups
RUN xbps-install -Syu gtk+3
RUN xbps-install -Syu libgbm
RUN xbps-install -Syu alsa-lib
RUN xbps-install -Syu xeyes
RUN xbps-install -Syu libglvnd
RUN xbps-install -Syu xvinfo
RUN xbps-install -Syu xcb-util-renderutil
RUN xbps-install -Syu glxinfo
RUN xbps-install -Syu mesa-dri
RUN xbps-install -Syu terminus-font
RUN xbps-install -Syu dejavu-fonts-ttf
RUN xbps-install -Syu xdg-utils
RUN xbps-install -Syu chromium
WORKDIR /pwd
ENTRYPOINT ["/app/run.sh"]

