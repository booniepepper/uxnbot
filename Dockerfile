FROM nixos/nix

RUN nix-channel --update \
  && nix-env --install --attr nixpkgs.nix nixpkgs.cacert \
  && nix-env --install envsubst uxn-unstable

COPY template.tal eval .

ENTRYPOINT ["./eval"]
