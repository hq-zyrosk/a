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
        "do" = "just";
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

  console = {
    packages = [
      terminus_font
    ];
    colors = [
      "FFFFFF"
      "C90000"
      "007400"
      "666600"
      "4343FF"
      "B100B1"
      "006F6F"
      "636363"

      "FFFFFF"
      "C90000"
      "007400"
      "666600"
      "4343FF"
      "B100B1"
      "006F6F"
      "636363"
    ];
    keyMap = "us";
    font = "${terminus_font}/share/consolefonts/ter-v16n.psf.gz";
    earlySetup = true;
    enable = true;
  };
}
