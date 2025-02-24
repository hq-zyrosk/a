set silent := true

cleanse:
    nix-collect-garbage --delete-old

commit:
    git add --all
    git commit --all --message='changes'
    git push

config:
    sudo chown --recursive --no-dereference x ~/.config/Code\ -\ Insiders/User/*
    sudo chmod --recursive 0777 ~/.config/Code\ -\ Insiders/User/*
    sudo chown --recursive --no-dereference x ~/.config/hypr/*
    sudo chmod --recursive 0777 ~/.config/hypr/*

finder:
    cd /nix/store/ && ls | grep "vscode-insiders" | grep -v '.drv$'

flake-a:
    sudo nixos-rebuild switch -I nixos-config=/etc/nixos/configuration.nix {{args}}

flake-c:
    home-manager switch {{args}}

flake-x:
    just flake-a -- {{args}} --impure --flake .#x

flake-z:
    just flake-c -- {{args}} --impure --flake .#z@x
    just config

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
