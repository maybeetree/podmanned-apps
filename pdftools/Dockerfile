FROM nixos/nix:latest

RUN nix-env -iA \
	nixpkgs.pdftk \
	nixpkgs.img2pdf

COPY ./app /app
WORKDIR /pwd

#ENTRYPOINT ["/root/.nix-profile/bin/pdftk"]
ENTRYPOINT ["/app/run.sh"]

