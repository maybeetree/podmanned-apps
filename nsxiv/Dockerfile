FROM nixos/nix:latest

RUN nix-env -iA nixpkgs.nsxiv

WORKDIR /pwd

ENTRYPOINT ["/root/.nix-profile/bin/nsxiv"]

