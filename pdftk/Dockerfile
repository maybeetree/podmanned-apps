FROM nixos/nix:latest

RUN nix-env -iA nixpkgs.pdftk

WORKDIR /pwd

ENTRYPOINT ["/root/.nix-profile/bin/pdftk"]

