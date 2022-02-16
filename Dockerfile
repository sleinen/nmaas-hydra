FROM nixos/nix

RUN nix-channel --update

RUN nix-build -A hydra-unstable '<nixpkgs>'

RUN nix-env -i hydra

VOLUME ["/var/lib/hydra"]

EXPOSE 3000

CMD []

ENTRYPOINT ["/root/.nix-profile/bin/hydra-server"]
