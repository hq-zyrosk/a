cleanse:
  nix-collect-garbage --delete-old

commit:
  git add --all
  git commit --all --message='changes'
  git push

config:
  sudo chown --recursive --no-dereference    x ~/.config/{Code/User,hypr}/*
  sudo chmod --recursive                  0777 ~/.config/{Code/User,hypr}/*

finder:
  cd /nix/store/ && ls | grep "vscode" | grep -v '.drv$'

z args="":
  just c "{{ args }} --impure --flake .#a@x"
  just config

x args="":
    just a "{{ args }} --impure --flake .#x"

c args:
  home-manager switch {{ args }}

a args:
  sudo nixos-rebuild switch -I nixos-config=/etc/nixos/configuration.nix {{ args }}

format:
  nix fmt --impure

repair:
  sudo nix-store --verify --repair --check-contents

repair-boot:
  sudo nixos-rebuild boot --impure

sh-512:
  mkpasswd --method=sha-512 --salt=HarayKrsna

update:
  sudo nix flake update --extra-experimental-features flakes --extra-experimental-features nix-command

set quiet := true
