{ extensions, pkgs, ... }:
{
  programs = {
    vscode = {
      userTasks = { };
      userSettings = import ./vscode/setting.nix;
      package = (pkgs.vscode.override { isInsiders = true; }).overrideAttrs (o2: {
        src = (
          builtins.fetchTarball {
            url = "https://code.visualstudio.com/sha/download?build=insider&os=linux-x64#6";
          }
        );
        meta = {
          name = "vscode-insiders";
          mainProgram = "code";
          description = "Visual Studio Code Insiders edition";
        };
        buildInputs = o2.buildInputs ++ [ pkgs.krb5 ];
        version = "latest";
        installPhase = ''
          ${o2.installPhase}

          xx="$out/lib/vscode/resources/app/out/vs/workbench"
          mv                $xx/workbench.desktop.main.css  $xx/workbench.desktop.main.backup.css
          cp ${./vscode/storage/workbench.desktop.main.css} $xx/workbench.desktop.main.css
        '';
      });
      mutableExtensionsDir = true;
      languageSnippets = import ./vscode/snippet.nix;
      keybindings = import ./vscode/keybind.nix;
      globalSnippets = { };
      extensions = with extensions.vscode-marketplace; [
        vadimcn.vscode-lldb
        tyriar.sort-lines
        tamasfe.even-better-toml
        rust-lang.rust-analyzer
        redhat.vscode-yaml
        pascalreitermann93.vscode-yaml-sort
        ms-vscode.live-server
        likebot.vscode-empty-themes
        jnoortheen.nix-ide
        github.copilot-chat
        github.copilot
        dbaeumer.vscode-eslint
      ];
      enableExtensionUpdateCheck = false;
      enableUpdateCheck = false;
      enable = true;
    };
  };
}
