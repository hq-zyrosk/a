cleanse:
  nix-collect-garbage --delete-old

commit:
  git add --all
  git commit --all --message='changes'
  git push

config:
  sudo chown --recursive --no-dereference    x ~/.config/{Code\ -\ Insiders/User,hypr}/*
  sudo chmod --recursive                  0777 ~/.config/{Code\ -\ Insiders/User,hypr}/*

finder:
  cd /nix/store/ && ls | grep "vscode-insiders" | grep -v '.drv$'

flake-z args="":
  just flake-c "{{args}} --impure --flake .#z@x"
  just config

flake-x args="":
  just flake-a "{{args}} --impure --flake .#x"

flake-c args:
  home-manager switch {{args}}

flake-a args:
  sudo nixos-rebuild switch -I nixos-config=/etc/nixos/configuration.nix {{args}}

format:
  nix fmt **/*.nix

repair:
  sudo nix-store --verify --repair --check-contents

repair-boot:
  sudo nixos-rebuild boot --impure

sh-512:
  mkpasswd --method=sha-512 --salt=HarayKrsna

update:
  sudo nix flake update --extra-experimental-features flakes --extra-experimental-features nix-command

set quiet
