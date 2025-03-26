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
          extensions = with pkgs.vscode-marketplace; [
            tamasfe.even-better-toml
            rust-lang.rust-analyzer
            jnoortheen.nix-ide
            redhat.vscode-yaml
            redhat.vscode-xml

            nefrob.vscode-just-syntax
            dbaeumer.vscode-eslint
            fill-labs.dependi
            tyriar.sort-lines

            github.copilot-chat
            github.copilot
          ];
          enableExtensionUpdateCheck = true;
          enableUpdateCheck = true;
        };
      };
      package = (pkgs.vscode.override {isInsiders = true;}).overrideAttrs (o2: {
        src = (
          builtins.fetchTarball {
            url = "https://code.visualstudio.com/sha/download?build=insider&os=linux-x64#1345689";
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
