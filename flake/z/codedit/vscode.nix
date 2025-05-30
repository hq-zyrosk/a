{pkgs, ...}: let
  profile = {
    userTasks = {};
    userSettings = import ./vscode/setting.nix;
    languageSnippets = import ./vscode/snippet.nix;
    keybindings = import ./vscode/keybind.nix;
    globalSnippets = {};
    extensions = with pkgs; [
      vscode-marketplace.tamasfe.even-better-toml
      vscode-marketplace.tabnine.tabnine-vscode
      vscode-marketplace.rust-lang.rust-analyzer
      vscode-marketplace.redhat.vscode-yaml
      vscode-marketplace.redhat.vscode-xml
      vscode-marketplace.nefrob.vscode-just-syntax
      vscode-marketplace.ms-vscode.vscode-typescript-next
      vscode-marketplace.ms-vscode.makefile-tools
      vscode-marketplace.likebot.vscode-empty-themes
      vscode-marketplace.jnoortheen.nix-ide
      vscode-marketplace.fill-labs.dependi
      vscode-marketplace.dbaeumer.vscode-eslint
    ];
  };
in {
  programs = {
    vscode = {
      profiles = {
        default =
          {
            enableExtensionUpdateCheck = true;
            enableUpdateCheck = true;
          }
          // profile;
      };
      package = (pkgs.vscode.override {isInsiders = false;}).overrideAttrs (o2: {
        installPhase = ''
          ${o2.installPhase}

          xx="$out/lib/vscode/resources/app/out/vs/workbench"
          mv                $xx/workbench.desktop.main.css  $xx/workbench.desktop.main.backup.css
          cp ${./vscode/storage/workbench.desktop.main.css} $xx/workbench.desktop.main.css
        '';
      });
      mutableExtensionsDir = true;
      enable = true;
    };
  };
}
