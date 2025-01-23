{
  security = {
    pam = {
      services = {
        hyprlock = { };
      };
      loginLimits = [
        {
          value = "1048576";
          type = "soft";
          item = "nofile";
          domain = "*";
        }
      ];
    };
    chromiumSuidSandbox = {
      enable = true;
    };
  };
}
