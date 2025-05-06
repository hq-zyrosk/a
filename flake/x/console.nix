{pkgs, ...}: let
  terminus_font = pkgs.terminus_font;
in {
  services = {
    getty = {
      extraArgs = [
        "--nohostname"
      ];
    };
  };

  programs = {
    fish = {
      vendor = {
        completions = {
          enable = true;
        };
        functions = {
          enable = true;
        };
        config = {
          enable = true;
        };
      };
      shellAliases = {
        "ls" = "eza --all --header --hyperlink --long";
      };
      shellAbbrs = {};
      interactiveShellInit = ''
        fish_config theme         choose 'fish default'
        fish_config prompt        choose simple
        set         fish_greeting ""

        function fish_prompt
          if test $status -ne 0
            set prompt_color $fish_color_error
          else
            set prompt_color $fish_color_cwd
          end

          printf '%s%s%s ' (set_color $prompt_color) (
            string replace -r "^~" "·" (prompt_pwd)
          ) (set_color normal)
        end
      '';
      loginShellInit = "";
      promptInit = "";
      shellInit = "";
      useBabelfish = false;
      enable = true;
    };
  };

  environment = {
    defaultPackages = with pkgs; [
      nodejs_23
      curlHTTP3
      unzip
      just
      file
      eza
    ];
    systemPackages = with pkgs; [
      watchexec
      xdg-utils
      timelimit
      libnotify
      killall
      cyme
    ];
  };

  console = {
    packages = [
      terminus_font
    ];
    colors = [
      "000000"
      "FFC5C5"
      "00F500"
      "DBDB00"
      "CFCFFF"
      "FFBEFF"
      "00EBEB"
      "D3D3D3"

      "5A5A5A"
      "FFC5C5"
      "00F500"
      "DBDB00"
      "CFCFFF"
      "FFBEFF"
      "00EBEB"
      "FFFFFF"
    ];
    keyMap = "us";
    font = "${terminus_font}/share/consolefonts/ter-v16n.psf.gz";
    earlySetup = true;
    enable = true;
  };
}
