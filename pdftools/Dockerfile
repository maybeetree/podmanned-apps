#FROM nixos/nix:latest
#
#RUN nix-env -iA \
#	nixpkgs.pdftk \
#	nixpkgs.img2pdf \
#	nixpkgs.pandoc \
#	nixpkgs.ocrmypdf \
#	nixpkgs.texlive

FROM ghcr.io/void-linux/void-glibc

RUN xbps-install -Syu xbps
RUN xbps-install -Syu pdftk
RUN xbps-install -Syu img2pdf
RUN xbps-install -Syu pandoc
RUN xbps-install -Syu texlive
RUN xbps-install -Syu python3-ocrmypdf
RUN xbps-install -Syu pnpm
RUN xbps-install -Syu chromium
RUN xbps-install -Syu noto-fonts-cjk
RUN xbps-install -Syu noto-fonts-ttf
RUN xbps-install -Syu noto-fonts-emoji
RUN xbps-install -Syu shadow
RUN useradd -m -s /bin/sh user

USER user

RUN SHELL=dash ENV=~/.profile pnpm setup
RUN . ~/.profile && pnpm i --dangerously-allow-all-builds -g md-to-pdf
#RUN . ~/.profile && pnpm puppeteer browsers install chromium

COPY ./app /app
WORKDIR /pwd

#ENTRYPOINT ["/root/.nix-profile/bin/pdftk"]
ENTRYPOINT ["/app/run.sh"]

