FROM nixos/nix:latest

RUN nix-env -iA \
	nixpkgs.pdftk \
	nixpkgs.img2pdf \
	nixpkgs.pandoc \
	nixpkgs.ocrmypdf

COPY ./app /app
WORKDIR /pwd

#ENTRYPOINT ["/root/.nix-profile/bin/pdftk"]
ENTRYPOINT ["/app/run.sh"]

