{pkgs, ...}: {
  programs = {
    vscode = {
      profiles = {
        default = {
          userTasks = {};
          userSettings = import ./vscode/setting.nix;
          languageSnippets = import ./vscode/snippet.nix;
          keybindings = import ./vscode/keybind.nix;
          globalSnippets = {};
          extensions = with pkgs; [
            vscode-marketplace.ms-vscode.vscode-typescript-next
            vscode-marketplace.tamasfe.even-better-toml
            vscode-marketplace.rust-lang.rust-analyzer
            vscode-marketplace.jnoortheen.nix-ide
            vscode-marketplace.redhat.vscode-yaml
            vscode-marketplace.redhat.vscode-xml

            vscode-marketplace.likebot.vscode-empty-themes
            vscode-marketplace.nefrob.vscode-just-syntax

            vscode-marketplace.dbaeumer.vscode-eslint
            vscode-marketplace.fill-labs.dependi
            vscode-marketplace.tyriar.sort-lines

            vscode-extensions.github.copilot-chat
            vscode-extensions.github.copilot
          ];
          enableExtensionUpdateCheck = true;
          enableUpdateCheck = true;
        };
      };
      package = (pkgs.vscode.override {isInsiders = true;}).overrideAttrs (o2: {
        src = (
          builtins.fetchTarball {
            url = "https://code.visualstudio.com/sha/download?build=insider&os=linux-x64#8";
          }
        );
        meta = {
          name = "vscode-insiders";
          mainProgram = "code";
          description = "Visual Studio Code Insiders edition";
        };
        buildInputs = o2.buildInputs ++ [pkgs.krb5];
        version = "latest";
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
