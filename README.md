# NIX-TEST

Test of the rust flakes from https://github.com/DeterminateSystems/zero-to-nix

```
# Simple shell
$ nix flake init -t github:bib0x/nix-test#rust-dev
$ nix develop

# Rust Cli App template
$ nix flake init -t github:bib0x/nix-test#rust-cli-app
$ nix develop
```
